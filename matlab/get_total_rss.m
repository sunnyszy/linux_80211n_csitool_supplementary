%GET_TOTAL_RSS Calculates the Received Signal Strength (RSS) in dBm from
% a CSI struct.
%
% (c) 2011 Daniel Halperin <dhalperi@cs.washington.edu>
%
function ret = get_total_rss(recent_rssi)

    % Careful here: rssis could be zero
    rssi_mag = dbinv(recent_rssi);
    
    ret = db(rssi_mag, 'pow');% - 44 - csi_st.agc;
%     disp(['ret is : ' num2str(ret)]);
end