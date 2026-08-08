INSERT INTO jobs (id,type,state,attempt,idempotency_key,requested_by,progress,created_at,started_at,finished_at) VALUES ('job_bootstrap_f8dfc1a873a48ca396ea','bootstrap_inventory','succeeded',1,'bootstrap:f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','bootstrap',100,'2026-08-08T12:35:15Z','2026-08-08T12:35:15Z','2026-08-08T12:35:15Z') ON CONFLICT(id) DO UPDATE SET state=excluded.state,progress=excluded.progress,finished_at=excluded.finished_at;
--> statement-breakpoint
INSERT INTO job_events (id,job_id,from_state,to_state,message,details_json,actor,created_at) VALUES ('event_f8dfc1a873a48ca396ea','job_bootstrap_f8dfc1a873a48ca396ea',NULL,'succeeded','Bootstrap-Quellen indiziert.','{"chunks":592,"corpus_sha256":"f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff","documents":42,"terms":26340}','bootstrap','2026-08-08T12:35:15Z') ON CONFLICT(id) DO NOTHING;
--> statement-breakpoint
INSERT INTO audit_events (id,actor,action,resource_type,resource_id,details_json,created_at) VALUES ('audit_f8dfc1a873a48ca396ea','bootstrap','bootstrap_import','wiki','f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff','{"chunks":592,"corpus_sha256":"f8dfc1a873a48ca396ea046a5cc9add01212dc42661928708329bb77e6998fff","documents":42,"terms":26340}','2026-08-08T12:35:15Z') ON CONFLICT(id) DO NOTHING;
--> statement-breakpoint
PRAGMA optimize;
--> statement-breakpoint
