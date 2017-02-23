csi_file_name = 'csi_0_5200.log';

csi_entries = read_log_file(csi_file_name);
csi_entry = csi_entries{1};
esnr = esnr_extract(csi_entry);