clear, clc, close all

data = []; labels = [];
figure('Units','normalized','Position',[0.3,0.2,0.4,0.7]) 
axes('Position',[0.1,0.05,0.85,0.75])
hold on, axis square
[x,y] = meshgrid(0:10,0:10);
plot(x,y,'k-',y,x,'color',[1,1,1]*.7)
set(gca,'FontSize',10)

snap_to_grid = 1;

cm = jet(10);  % colours for plotting the classes
ind = [1,10,2,9,3,8,4,7,5,6];
cm = cm(ind,:);

for i = 1:10
    uicontrol('Unit','N','Pos',[0.02,(i-1)/10+0.02,0.08,0.06],...
        'String',num2str(i),'BackgroundColor',cm(i,:),...
        'Callback','label = str2num(get(gco,''String''))');
end

% Instruction text
uicontrol("Units","normalized",'Style','text',...
    'FontSize',10,'HorizontalAlignment','left','String',...
    {'Choose a class label on the left.',...
    'Click on the figure to add points to this class.',...
    'To remove a point, click on it again.',...
    'When finished, press a key from the keyboard.',...
    'The dataset (data, labels) will be stored in file Dataset.mat'},...
    'Position',[0.2,0.8,0.7,0.18]);

z = uicontrol("Style","togglebutton","Units","normalized",...
    "Position",[0.7,0.9,0.2,0.08],"String",'Snap to grid',...
    'FontSize',10,'Callback','snap_to_grid = z.Value;','Value',1);

label = 1;
h = [];
while ~waitforbuttonpress
    cpt = get(gca,'CurrentPoint');
    x = cpt(1,1); y = cpt(1,2);
    hitted = find(h == gco); %#ok<*EFIND>
    if isempty(hitted) && x >= 0 && x <= 10 && y >= 0 && y < 10
        % add to data
        if snap_to_grid
            x = round(x); y = round(y);
        end
        data = [data;x,y]; labels = [labels;label]; 
        h = [h, plot(x,y,'k.','markersize',20,'color',cm(label,:))];
    elseif x >= 0 && x <= 10 && y >= 0 && y < 10
        data(hitted,:) = [];
        labels(hitted) = [];
        delete(h(hitted))
        h(hitted) = [];   
    end
end

save('Dataset','data','labels')

text(8.5,0.5,'Data saved.','Color',[1,1,1],'FontSize',10,...
    'BackgroundColor',[1,0,0],'FontWeight','bold')
