x1a=[5 6 3 7 2 1]
x1b=10000:-1:0;
x2=[1,1];
theta=90;
checkIn = ["Abbie","25",'F';"Bart","42",'M';"Charlie","31",'F';"Dan","28",'M'];
weighIn = ["Bart","112.8";"Charlie","203.7";"Abbie","153.2";"Dan","175.0"];
triage = ["Dan","112.2","110","80";"Bart","89.9","145","92";"Abbie","72.9","128","89";"Charlie","82.6","118","78"];
ECG = {[];[];[]; ... 
[1178, 1205, 1205, 1208, 1194, 1250, 1264, 1273, 1278, 1282, 1288, 1293, 1283, 1278, 1261, 1256, 1254, 1257, 1263, 1268, 1278, 1281, 1287, 1283, 1283, 1274, 1268, 1260, 1256, 1251, 1229, 1248, 1240, 1226, 1224, 1215, 1205, 1211, 1205, 1209, 1210, 1205, 1210, 1203, 1196, 1202, 1196, 1191, 1190, 1188, 1187, 1217, 1216, 1206, 1189, 1157, 1168, 1142, 1119, 1104, 1097, 1094, 1095, 1049, 920, 1068, 1405, 1902, 1854, 1271, 1087, 1046, 1052, 1074, 1096, 1093, 1088, 1094, 1092, 1091, 1076, 1066, 1091, 1084, 1075, 1073, 1071, 1081, 1092, 1094, 1102, 1121, 1125, 1149, 1148, 1153, 1174, 1175, 1182, 1192, 1187, 1187, 1167, 1155, 1140, 1118, 1112, 1107, 1103, 1104, 1106, 1099, 1109, 1106, 1108, 1105, 1110, 1118, 1122, 1122, 1136, 1148, 1177, 1218, 1244, 1265, 1271, 1270, 1253, 1233, 1191, 1148, 1118, 1099, 1065, 1043, 1035, 1024, 1028, 1030, 1038, 1038, 1048, 1063, 1062, 1050, 1030, 1032, 1019, 1000, 1007, 1004, 1005, 1010, 993, 901, 889, 1115, 1509, 1879, 1433, 1053, 1004, 1014, 1034, 1059, 1060, 1061, 1053, 1060, 1058, 1050, 1061, 1053, 1050, 1036, 1022, 983, 981, 1024, 1001, 984, 978, 962, 979, 970, 962, 974, 979, 971, 973, 960, 955, 927, 900, 866, 832, 792, 748, 765, 806, 790, 783, 780, 774, 773, 768, 745, 748, 738, 722, 772, 762, 745, 739, 722, 709, 697, 687, 677, 648, 662, 686, 686, 700, 693, 690, 687, 691, 674, 667, 661, 650, 699, 656, 674, 647, 613, 585, 573, 565, 570, 565, 537, 453, 482, 763, 1164, 1296]};

[Sorted_x, bubble_time, quick_time, x_rotated, patientStruct] = myFunction(x1a,x1b,x2,theta,checkIn,weighIn,triage,ECG)


function [Sorted_x, bubble_time, quick_time, x_rotated, patientStruct] = myFunction(x1a,x1b,x2,theta,checkIn,weighIn,triage,ECG)
try
Sorted_x = myBubbleSort(x1a);
catch
    disp(['ERROR: Sorted_x = myBubbleSort(x1a)  did not run'])
    Sorted_x='ERROR';
end
try
[bubble_time, quick_time] = compare(x1b);
catch
    disp(['ERROR: [bubble_time, quick_time] = compare(x1b); did not run'])
    bubble_time='ERROR';
    quick_time='ERROR';
end
try
x_rotated = rotation2D(x2,theta);
catch
    disp(['ERROR: x_rotated = rotation2D(x2,theta);  did not run'])
    x_rotated = 'ERROR';
end
try
patientStruct = combinePatient(checkIn,weighIn,triage,ECG)
catch
    disp(['ERROR: patientStruct = combinePatient(checkIn,weighIn,triage,ECG)  did not run'])
    patientStruct ='ERROR';
end
end

%Name
%Student ID
%Include this.   -_-   If its not present I'm not giving you partial credit. 

%Q1a
function sorted_x = myBubbleSort(x)

end

%Q1b
function [bubble_time, quick_time] = compare(x)

end

%Q2
%Round your answer to nearest 100s place
function x_rotated = rotation2D(x,theta)

end

%Q3
function patientStruct = combinePatient(checkIn,weighIn,triage,ECG)

end