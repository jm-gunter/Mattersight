function varargout = RubikGUI(varargin)

% RubikGUI.m
%    An interactive Rubik's Cube puzzle game. The user can
%    begin a new puzzle by clicking the Randomize Cube button
%    on the toolbar. Each face can then be rotated using the
%    appropriate buttons on the Rotate Face panel. The goal is
%    to match all the colors on each face. The cube may be
%    reset at any time by clicking the Reset Cube button on the
%    toolbar.
%    Developed by Jeff Gunter (March-April 2011).


% Last Modified by GUIDE v2.5 16-Apr-2011 11:58:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RubikGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @RubikGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before RubikGUI is made visible.
function RubikGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RubikGUI (see VARARGIN)

% Choose default command line output for RubikGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RubikGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

[B,G,O,R,W,Y]=InitCube3;
handles.B=B;
handles.G=G;
handles.O=O;
handles.R=R;
handles.W=W;
handles.Y=Y;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = RubikGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in whiteCW.
function whiteCW_Callback(hObject, eventdata, handles)
% hObject    handle to whiteCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =White_CW(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in redCW.
function redCW_Callback(hObject, eventdata, handles)
% hObject    handle to redCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Red_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in blueCW.
function blueCW_Callback(hObject, eventdata, handles)
% hObject    handle to blueCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Blue_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in orangeCW.
function orangeCW_Callback(hObject, eventdata, handles)
% hObject    handle to orangeCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Orange_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in greenCW.
function greenCW_Callback(hObject, eventdata, handles)
% hObject    handle to greenCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Green_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in yellowCW.
function yellowCW_Callback(hObject, eventdata, handles)
% hObject    handle to yellowCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Yellow_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in whiteCCW.
function whiteCCW_Callback(hObject, eventdata, handles)
% hObject    handle to whiteCCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% CCW rotations are made by performing 3 CW rotations
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =White_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =White_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =White_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in redCCW.
function redCCW_Callback(hObject, eventdata, handles)
% hObject    handle to redCCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% CCW rotations are made by performing 3 CW rotations
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Red_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Red_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Red_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in blueCCW.
function blueCCW_Callback(hObject, eventdata, handles)
% hObject    handle to blueCCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% CCW rotations are made by performing 3 CW rotations
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Blue_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Blue_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Blue_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in orangeCCW.
function orangeCCW_Callback(hObject, eventdata, handles)
% hObject    handle to orangeCCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% CCW rotations are made by performing 3 CW rotations
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Orange_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Orange_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Orange_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in greenCCW.
function greenCCW_Callback(hObject, eventdata, handles)
% hObject    handle to greenCCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% CCW rotations are made by performing 3 CW rotations
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Green_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Green_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Green_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end

% --- Executes on button press in yellowCCW.
function yellowCCW_Callback(hObject, eventdata, handles)
% hObject    handle to yellowCCW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% CCW rotations are made by performing 3 CW rotations
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Yellow_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Yellow_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =Yellow_CW(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);

% Check if cube is solved
check=SolvedCube(handles.B,handles.G,handles.O,handles.R,...
    handles.W,handles.Y);
if check==1
    set(handles.uipanel2,'Visible','On')
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% This is the Play Again button

% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[B,G,O,R,W,Y]=InitCube3;
handles.B=B;
handles.G=G;
handles.O=O;
handles.R=R;
handles.W=W;
handles.Y=Y;
set(handles.uipanel2,'Visible','Off')
guidata(hObject, handles);



% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% This is the Quit button

% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --------------------------------------------------------------------
function resetcube_ClickedCallback(hObject, eventdata, handles)
% This is the Reset Cube menu button

% hObject    handle to resetcube (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[B,G,O,R,W,Y]=InitCube3;
handles.B=B;
handles.G=G;
handles.O=O;
handles.R=R;
handles.W=W;
handles.Y=Y;
guidata(hObject, handles);

% --------------------------------------------------------------------
function RandCube_ClickedCallback(hObject, eventdata, handles)
% This is the Randomize Cube menu button

% hObject    handle to RandCube (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[handles.B,handles.G,handles.O,handles.R,handles.W,handles.Y]...
    =RandCube2(handles.B,handles.G,handles.O,handles.R,...
              handles.W,handles.Y);
guidata(hObject, handles);
