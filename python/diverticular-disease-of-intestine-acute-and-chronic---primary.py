# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"J511z00","system":"readv2"},{"code":"10437.0","system":"med"},{"code":"10483.0","system":"med"},{"code":"106340.0","system":"med"},{"code":"1101.0","system":"med"},{"code":"12345.0","system":"med"},{"code":"14942.0","system":"med"},{"code":"17105.0","system":"med"},{"code":"19935.0","system":"med"},{"code":"2044.0","system":"med"},{"code":"2536.0","system":"med"},{"code":"27444.0","system":"med"},{"code":"31365.0","system":"med"},{"code":"34164.0","system":"med"},{"code":"347.0","system":"med"},{"code":"3538.0","system":"med"},{"code":"3593.0","system":"med"},{"code":"37588.0","system":"med"},{"code":"37813.0","system":"med"},{"code":"38941.0","system":"med"},{"code":"42866.0","system":"med"},{"code":"44647.0","system":"med"},{"code":"47924.0","system":"med"},{"code":"48173.0","system":"med"},{"code":"48589.0","system":"med"},{"code":"49066.0","system":"med"},{"code":"49084.0","system":"med"},{"code":"50313.0","system":"med"},{"code":"51511.0","system":"med"},{"code":"53092.0","system":"med"},{"code":"5686.0","system":"med"},{"code":"5857.0","system":"med"},{"code":"61664.0","system":"med"},{"code":"61722.0","system":"med"},{"code":"62979.0","system":"med"},{"code":"68959.0","system":"med"},{"code":"69918.0","system":"med"},{"code":"71130.0","system":"med"},{"code":"72590.0","system":"med"},{"code":"73334.0","system":"med"},{"code":"7662.0","system":"med"},{"code":"8322.0","system":"med"},{"code":"9511.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diverticular-disease-of-intestine-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diverticular-disease-of-intestine-acute-and-chronic---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diverticular-disease-of-intestine-acute-and-chronic---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diverticular-disease-of-intestine-acute-and-chronic---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
