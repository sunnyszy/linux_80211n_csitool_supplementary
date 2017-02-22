function [ esnr ] = esnr_extract(raw_csi, recent_rssi)
%   compute esnr from normalizd csi and rssi value
%   created by Zhenyu Song, sunnyszy@gmail.com

    recent_rssi = double(recent_rssi);
    uint_csi = uint8(zeros(140,1));
    for i = 1:140
        uint_csi(i) = uint8(raw_csi{i});
    end
	csi = read_csi(uint_csi, int32(1), int32(1), int32(56));
    csi = get_scaled_csi(csi, recent_rssi);
%     size(csi)
    esnr = db(get_eff_SNRs(csi), 'pow');
end

