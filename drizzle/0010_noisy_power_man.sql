ALTER TABLE `coupons` RENAME TO `team_seats`;--> statement-breakpoint
ALTER TABLE `team_seats` RENAME COLUMN "redeemed_by_user_id" TO "claimed_by_user_id";--> statement-breakpoint
ALTER TABLE `team_seats` RENAME COLUMN "redeemed_at" TO "claimed_at";--> statement-breakpoint
PRAGMA foreign_keys=OFF;--> statement-breakpoint
CREATE TABLE `__new_team_seats` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`team_id` integer NOT NULL,
	`course_id` integer NOT NULL,
	`code` text NOT NULL,
	`purchase_id` integer NOT NULL,
	`claimed_by_user_id` integer,
	`claimed_at` text,
	`created_at` text NOT NULL,
	FOREIGN KEY (`team_id`) REFERENCES `teams`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`course_id`) REFERENCES `courses`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`purchase_id`) REFERENCES `purchases`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`claimed_by_user_id`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
INSERT INTO `__new_team_seats`("id", "team_id", "course_id", "code", "purchase_id", "claimed_by_user_id", "claimed_at", "created_at") SELECT "id", "team_id", "course_id", "code", "purchase_id", "claimed_by_user_id", "claimed_at", "created_at" FROM `team_seats`;--> statement-breakpoint
DROP TABLE `team_seats`;--> statement-breakpoint
ALTER TABLE `__new_team_seats` RENAME TO `team_seats`;--> statement-breakpoint
PRAGMA foreign_keys=ON;--> statement-breakpoint
CREATE UNIQUE INDEX `team_seats_code_unique` ON `team_seats` (`code`);