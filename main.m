clear all
close all
clc



v = VideoReader('break.mp4');
videoFReader = vision.VideoFileReader('break.mp4');
% Create a video player object to play the video file.

videoPlayer = vision.VideoPlayer;
% Use a while loop to read and play the video frames.

obj = setupSystemObjects();

while ~isDone(videoFReader)
  videoFrame = obj.videoFReader();
  videoPlayer(videoFrame);
end



% Release the objects.

% release(videoPlayer);
% release(videoFReader);