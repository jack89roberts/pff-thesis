myDir = '/home/jack/Documents/pff-thesis/Figures';

D = dir('/home/jack/Documents/pff-thesis/Figures');

for i=3:length(D)
    
    if(D(i).isdir)
        fprintf('---------------------------------------------\n');
        fprintf('Searching directory %d of %d: %s\n',i,length(D),D(i).name);
        fprintf('---------------------------------------------\n');
        cd([myDir '/' D(i).name])
        
        f = dir('*.fig');
        for j=1:length(f)
            pdfName = [f(j).name(1:end-4)];
            if (~exist([pdfName '.pdf'],'file'))
                fprintf('File %d of %d: Making %s...\n',j,length(f),[pdfName '.pdf']);
                h=openfig([myDir '/' D(i).name '/' f(j).name]);
                savePlot([myDir '/' D(i).name],pdfName,[0 0 0 1]);
            else
%                 fprintf('File %d of %d: Deleting %s...\n',j,length(f),pdfName);
%                 delete([myDir '/' D(i).name '/' pdfName]);
            end
        end  
    end
    
end