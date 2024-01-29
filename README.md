supported version
```
python2.7
ubuntu18.04
ros-melodic
```

# 1. workspace
```
source ./devel/setup.bash
```

# 2. recording data
```
python ./main.py --input_dir ../data/mocap_env1_comb/ --gt_pose --imu --joint --rgb
```
:speaker: \
use the command above to record data in the form of rosbag. Options are provided!

| Tag | Sensor | Data Type |
| ---------|----------|----------|
| --gt_pose  |  ground truth :movie_camera: |PoseStamped.msg |
| --imu  | IMU unit  |Imu.msg|
| --joint  | joint angle of mini-cheetah :dog: |JointState.msg|
|--event | event camera  :camera:|Event.msg|
|--depth|depth camera  :camera:|Image.msg|
|--rgb|RGB camera  :camera:|Image.msg|
|--lidar|Lidar data|sensor_msgs/PointCloud2|



P.S. :disappointed: Attention! since pyros require python2.7 while dv-processing is not supported by python2.7. Users need to read from event data as txt as ``follows`` then use the above command to record event data.
## 2.1 record event data
You need to build and source this workspace before next move
1. get event.txt
```
python3 ./read_event_data.py --input_dir ../data/mocap_env1_comb/ 
```
2. record event data
```
python ./main.py --input_dir ../data/mocap_env1_comb/ --event
```
## 2.2 optinal alternative :cat: 
You may use third-party cpp project to transfer aedat4 file to rosbag and merge the event bad with your target

## 2.3 Add lidar data:
For now, you can only merge two rosbag


# 3. verify rosbag

```
rosbag play output.bag
```

```
rosbag info output.bag
```

```
rosbag echo <topic name>
```

## 2.1 check rgb, raw depth
```
python ./check_event_depth.py --input_dir ../data/mocap_env1_comb/
```


```
python ./check_rgb_depth.py --input_dir ../data/mocap_env1_comb/
```