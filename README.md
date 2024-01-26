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

| tag | sensor |
| ---------|----------|
| --gt_pose  |  ground truth :movie_camera: |
| --imu  | IMU unit  |
| --joint  | joint angle of mini-cheetah :dog: |
|--event | event camera  :camera:|
|--depth|depth camera  :camera:|



P.S. :disappointed: Attention! since pyros require python2.7 while dv-processing is not supported by python2.7. Users need to read from event data as txt as ``follows`` then use the above command to record event data.
## 2.1 record event data
1. get event.txt
```
python3 ./read_event_data.py --input_dir ../data/mocap_env1_comb/ 
```
2. record event data
```
python ./main.py --input_dir ../data/mocap_env1_comb/ --event
```





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