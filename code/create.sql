DROP TABLE Workout_Video_Trainer;
DROP TABLE Workout_Video_Type;
DROP TABLE Recipe_Video;
DROP TABLE Channels;

CREATE TABLE Channels(
	channel_id CHAR(24) NOT NULL,
	channel_title VARCHAR(255) NOT NULL,
	subscriberCount INT NOT NULL,
	channel_viewCount BIGINT NOT NULL,
	videoCount INT NOT NULL,
	PRIMARY KEY (channel_id));

CREATE TABLE Workout_Video_Trainer(
	video_id CHAR(11) NOT NULL,
	channel_id CHAR(24) NOT NULL,
	publish_date CHAR(20) NOT NULL,
	video_title VARCHAR(255) NOT NULL,
	duration VARCHAR(255) NOT NULL,
	video_viewCount INT NOT NULL,
	likeCount INT NOT NULL,
	trainer VARCHAR(255),
	PRIMARY KEY (video_id, channel_id),
	FOREIGN KEY(channel_id) REFERENCES Channels(channel_id) ON DELETE CASCADE);

CREATE TABLE Workout_Video_Type(
	video_id CHAR(11) NOT NULL,
	channel_id CHAR(24) NOT NULL,
	publish_date CHAR(20) NOT NULL,
	video_title VARCHAR(255) NOT NULL,
	duration VARCHAR(255) NOT NULL,
	video_viewCount INT NOT NULL,
	likeCount INT NOT NULL,
	workout_type VARCHAR(255) NOT NULL,
	PRIMARY KEY (video_id, channel_id),
	FOREIGN KEY (channel_id) REFERENCES Channels(channel_id) ON DELETE CASCADE);
    
CREATE TABLE Recipe_Video(
	video_id CHAR(11) NOT NULL,
	channel_id CHAR(24) NOT NULL,
	publish_date CHAR(20) NOT NULL,
	video_title VARCHAR(255) NOT NULL,
	duration VARCHAR(255) NOT NULL,
	video_viewCount INT NOT NULL,
	likeCount INT NOT NULL,
	PRIMARY KEY (video_id, channel_id),
	FOREIGN KEY(channel_id) REFERENCES Channels(channel_id) ON DELETE CASCADE);