# 1. recording data
```
python ./main.py --input_dir ../data/mocap_env1_comb/ --gt_pose --imu --joint --rgb
```

# 2. verify rosbag

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