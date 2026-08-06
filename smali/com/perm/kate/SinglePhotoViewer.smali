.class public Lcom/perm/kate/SinglePhotoViewer;
.super Lcom/perm/kate/BaseActivity;
.source "SinglePhotoViewer.java"


# instance fields
.field private _touch_x:I

.field private _touch_y:I

.field private account_id:J

.field private account_tag_id:J

.field private allow:Z

.field private bitmapRealHeight:I

.field private bitmapRealScale:F

.field private bitmapRealWidth:I

.field private btn_ok:Landroid/widget/Button;

.field private confirmTag:Z

.field private confirmTagClickListener:Landroid/view/View$OnClickListener;

.field private confirm_callback:Lcom/perm/kate/session/Callback;

.field private crop:Z

.field private fl_tags_placeholder:Landroid/widget/RelativeLayout;

.field private handlerTimer:Landroid/os/Handler;

.field private img_photo_view:Landroid/widget/ImageView;

.field private is_old:Z

.field private lp:Landroid/widget/RelativeLayout$LayoutParams;

.field private margins:I

.field private photo:Lcom/perm/kate/api/Photo;

.field private photoTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field private putTag:Z

.field private rec_touch_listener:Landroid/view/View$OnTouchListener;

.field private removeTagClickListener:Landroid/view/View$OnClickListener;

.field private resize_option:I

.field private rl_root_single_photo:Landroid/widget/RelativeLayout;

.field private rotate:I

.field private runnableTimer:Ljava/lang/Runnable;

.field private screen_height:I

.field private screen_width:I

.field private tag_callback:Lcom/perm/kate/session/Callback;

.field private touch_h:I

.field private touch_listener:Landroid/view/View$OnTouchListener;

.field private touch_w:I

.field private touch_x:I

.field private touch_y:I

.field private tp:Landroid/widget/ImageView;

.field private tumbs:I

.field private tv_info:Landroid/widget/TextView;

.field private tv_info2:Landroid/widget/TextView;

.field private tv_info3:Landroid/widget/TextView;

.field private uri:Landroid/net/Uri;

.field private x1:I

.field private x2:I

.field private y1:I

.field private y2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->is_old:Z

    .line 52
    iput-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->putTag:Z

    .line 63
    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    .line 64
    iput-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->allow:Z

    .line 69
    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    .line 70
    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    .line 71
    iput-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    .line 79
    iput-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTag:Z

    .line 267
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$2;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_listener:Landroid/view/View$OnTouchListener;

    .line 294
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$3;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->rec_touch_listener:Landroid/view/View$OnTouchListener;

    .line 543
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SinglePhotoViewer$7;-><init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->tag_callback:Lcom/perm/kate/session/Callback;

    .line 669
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$12;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTagClickListener:Landroid/view/View$OnClickListener;

    .line 676
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$13;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->removeTagClickListener:Landroid/view/View$OnClickListener;

    .line 695
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$15;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SinglePhotoViewer$15;-><init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirm_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SinglePhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->onOkClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_w:I

    return v0
.end method

.method static synthetic access$1002(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_w:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    return v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    return v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    return v0
.end method

.method static synthetic access$1302(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    return p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    return v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    return v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_x:I

    return v0
.end method

.method static synthetic access$1602(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_x:I

    return p1
.end method

.method static synthetic access$1700(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_y:I

    return v0
.end method

.method static synthetic access$1702(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_y:I

    return p1
.end method

.method static synthetic access$1800(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->onSelectUser()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->tag_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/perm/kate/SinglePhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/perm/kate/SinglePhotoViewer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->getTagId()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->showPhotoTagsUI()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->onFailed()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->postRunShowPhotoTags()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/SinglePhotoViewer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/perm/kate/SinglePhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->showPhotoTags()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/SinglePhotoViewer;Lcom/perm/kate/api/Photo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # Lcom/perm/kate/api/Photo;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SinglePhotoViewer;->confirmPhotoTag(Lcom/perm/kate/api/Photo;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/SinglePhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->allow:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/perm/kate/SinglePhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/perm/kate/SinglePhotoViewer;->account_tag_id:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->allow:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirm_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->readyInUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->getSide()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/SinglePhotoViewer;III)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/SinglePhotoViewer;->moveSide(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SinglePhotoViewer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SinglePhotoViewer;->moveTagRec(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    return v0
.end method

.method static synthetic access$802(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    return p1
.end method

.method static synthetic access$900(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 42
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    return v0
.end method

.method static synthetic access$902(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SinglePhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    return p1
.end method

.method private checkRealSizes(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 183
    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 185
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    rem-int/lit16 v4, v4, 0xb4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_0

    .line 186
    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 187
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 189
    :cond_0
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    if-lez v4, :cond_2

    .line 190
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    invoke-static {v4}, Lcom/perm/kate/photoupload/UploadHelper;->getResizeSize(I)I

    move-result v3

    .line 192
    .local v3, "maxWidth":I
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    if-le v4, v3, :cond_1

    .line 193
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float v4, v4

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 194
    .local v0, "k":F
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 195
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 197
    .end local v0    # "k":F
    :cond_1
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    if-le v4, v3, :cond_2

    .line 198
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    int-to-float v4, v4

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 199
    .restart local v0    # "k":F
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 200
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 203
    .end local v0    # "k":F
    .end local v3    # "maxWidth":I
    :cond_2
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 204
    .local v1, "kx":F
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 205
    .local v2, "ky":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    .line 206
    return-void
.end method

.method private confirmPhotoTag(Lcom/perm/kate/api/Photo;Z)V
    .locals 1
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;
    .param p2, "confirm"    # Z

    .prologue
    .line 684
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/SinglePhotoViewer$14;-><init>(Lcom/perm/kate/SinglePhotoViewer;ZLcom/perm/kate/api/Photo;)V

    .line 692
    invoke-virtual {v0}, Lcom/perm/kate/SinglePhotoViewer$14;->start()V

    .line 693
    return-void
.end method

.method private getPhotoTags()V
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$6;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 540
    invoke-virtual {v0}, Lcom/perm/kate/SinglePhotoViewer$6;->start()V

    .line 541
    return-void
.end method

.method private getRealBitmapSize(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "inputStream1":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/SinglePhotoViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 168
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v1, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 172
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v3, v4}, Lcom/perm/kate/SinglePhotoViewer;->checkRealSizes(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 179
    .end local v1    # "o":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method private getSide()I
    .locals 3

    .prologue
    .line 319
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    if-ge v0, v1, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    .line 322
    :cond_0
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    if-ge v0, v1, :cond_1

    .line 323
    const/4 v0, 0x2

    goto :goto_0

    .line 325
    :cond_1
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_w:I

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 326
    const/4 v0, 0x3

    goto :goto_0

    .line 328
    :cond_2
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 329
    const/4 v0, 0x4

    goto :goto_0

    .line 331
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTagId()V
    .locals 6

    .prologue
    .line 574
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/PhotoTag;

    .line 575
    .local v0, "pt":Lcom/perm/kate/api/PhotoTag;
    iget-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->uid:J

    iget-wide v4, p0, Lcom/perm/kate/SinglePhotoViewer;->account_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 576
    iget-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->tag_id:J

    iput-wide v2, p0, Lcom/perm/kate/SinglePhotoViewer;->account_tag_id:J

    .line 580
    .end local v0    # "pt":Lcom/perm/kate/api/PhotoTag;
    :cond_1
    return-void
.end method

.method private isOld()Z
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSide(III)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "side"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v0, 0x1

    .line 372
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    sub-int v5, p1, v7

    .line 373
    .local v5, "x0":I
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    sub-int v6, p2, v7

    .line 374
    .local v6, "y0":I
    if-eq p3, v8, :cond_0

    if-ne p3, v9, :cond_1

    .line 375
    :cond_0
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_x:I

    add-int v5, p1, v7

    .line 376
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_y:I

    add-int v6, p2, v7

    .line 378
    :cond_1
    const/4 v1, 0x0

    .line 379
    .local v1, "dx1":I
    const/4 v3, 0x0

    .line 380
    .local v3, "dy1":I
    const/4 v2, 0x0

    .line 381
    .local v2, "dx2":I
    const/4 v4, 0x0

    .line 382
    .local v4, "dy2":I
    if-ne p3, v0, :cond_2

    .line 383
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int v1, v7, v5

    .line 384
    iget-boolean v7, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v7, :cond_2

    .line 385
    move v3, v1

    .line 387
    :cond_2
    const/4 v7, 0x2

    if-ne p3, v7, :cond_3

    .line 388
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int v3, v7, v6

    .line 389
    iget-boolean v7, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v7, :cond_3

    .line 390
    move v1, v3

    .line 392
    :cond_3
    if-ne p3, v8, :cond_4

    .line 393
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int v2, v7, v5

    .line 394
    iget-boolean v7, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v7, :cond_4

    .line 395
    move v4, v2

    .line 397
    :cond_4
    if-ne p3, v9, :cond_5

    .line 398
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int v4, v7, v6

    .line 399
    iget-boolean v7, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v7, :cond_5

    .line 400
    move v2, v4

    .line 402
    :cond_5
    iget-boolean v7, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v7, :cond_9

    .line 404
    if-ltz v1, :cond_6

    if-lez v2, :cond_8

    .line 405
    .local v0, "decrease":Z
    :cond_6
    :goto_0
    if-eqz v0, :cond_9

    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/lit16 v8, v8, 0xc8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 426
    .end local v0    # "decrease":Z
    :cond_7
    :goto_1
    return-void

    .line 404
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :cond_9
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_a

    if-ltz v1, :cond_7

    .line 410
    :cond_a
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_b

    if-gtz v2, :cond_7

    .line 412
    :cond_b
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_c

    if-ltz v3, :cond_7

    .line 414
    :cond_c
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_d

    if-gtz v4, :cond_7

    .line 416
    :cond_d
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v7, v1

    iput v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    .line 417
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    .line 418
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v7, v2

    iput v7, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 419
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 420
    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 421
    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 422
    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 423
    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 424
    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v7, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") dx1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dx2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private moveTagRec(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 251
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    sub-int v2, p1, v4

    .line 252
    .local v2, "x0":I
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    sub-int v3, p2, v4

    .line 253
    .local v3, "y0":I
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int v0, v4, v2

    .line 254
    .local v0, "dx":I
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int v1, v4, v3

    .line 255
    .local v1, "dy":I
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    .line 256
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    .line 257
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 258
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 259
    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 260
    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 261
    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 262
    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 263
    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private onAccept(J)V
    .locals 25
    .param p1, "user_id"    # J

    .prologue
    .line 446
    new-instance v9, Lcom/perm/kate/api/PhotoTag;

    invoke-direct {v9}, Lcom/perm/kate/api/PhotoTag;-><init>()V

    .line 447
    .local v9, "ptag":Lcom/perm/kate/api/PhotoTag;
    move-wide/from16 v0, p1

    iput-wide v0, v9, Lcom/perm/kate/api/PhotoTag;->uid:J

    .line 448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v0, v15, Lcom/perm/kate/api/Photo;->pid:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v9, Lcom/perm/kate/api/PhotoTag;->pid:J

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v15, v15, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v9, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    check-cast v15, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-virtual {v15}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValues()[Ljava/lang/Object;

    move-result-object v14

    .line 451
    .local v14, "values":[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object v15, v14, v15

    check-cast v15, [D

    move-object v11, v15

    check-cast v11, [D

    .line 452
    .local v11, "size":[D
    const/4 v15, 0x0

    aget-wide v20, v11, v15

    const-wide/16 v22, 0x0

    cmpl-double v15, v20, v22

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    aget-wide v20, v11, v15

    const-wide/16 v22, 0x0

    cmpl-double v15, v20, v22

    if-nez v15, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const/4 v15, 0x1

    aget-object v15, v14, v15

    check-cast v15, [D

    move-object v2, v15

    check-cast v2, [D

    .line 455
    .local v2, "bitmap_size":[D
    const/4 v15, 0x2

    aget-object v15, v14, v15

    check-cast v15, [F

    move-object v8, v15

    check-cast v8, [F

    .line 456
    .local v8, "matrix":[F
    const/4 v15, 0x0

    aget v15, v8, v15

    float-to-double v0, v15

    move-wide/from16 v20, v0

    const/4 v15, 0x0

    aget-wide v22, v2, v15

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v4, v20, v22

    .line 457
    .local v4, "kx":D
    const/4 v15, 0x4

    aget v15, v8, v15

    float-to-double v0, v15

    move-wide/from16 v20, v0

    const/4 v15, 0x1

    aget-wide v22, v2, v15

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v6, v20, v22

    .line 458
    .local v6, "ky":D
    const/4 v15, 0x2

    aget v15, v8, v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    .line 459
    .local v16, "x0":D
    const/4 v15, 0x5

    aget v15, v8, v15

    float-to-double v0, v15

    move-wide/from16 v18, v0

    .line 460
    .local v18, "y0":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v20, v0

    add-int v15, v15, v20

    int-to-double v0, v15

    move-wide/from16 v20, v0

    sub-double v20, v20, v16

    div-double v20, v20, v4

    move-wide/from16 v0, v20

    iput-wide v0, v9, Lcom/perm/kate/api/PhotoTag;->x:D

    .line 461
    move-object/from16 v0, p0

    iget v15, v0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v20, v0

    add-int v15, v15, v20

    int-to-double v0, v15

    move-wide/from16 v20, v0

    sub-double v20, v20, v18

    div-double v20, v20, v6

    move-wide/from16 v0, v20

    iput-wide v0, v9, Lcom/perm/kate/api/PhotoTag;->y:D

    .line 462
    move-object/from16 v0, p0

    iget v15, v0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v20, v0

    sub-int v15, v15, v20

    int-to-double v0, v15

    move-wide/from16 v20, v0

    sub-double v20, v20, v16

    div-double v20, v20, v4

    move-wide/from16 v0, v20

    iput-wide v0, v9, Lcom/perm/kate/api/PhotoTag;->x2:D

    .line 463
    move-object/from16 v0, p0

    iget v15, v0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v20, v0

    sub-int v15, v15, v20

    int-to-double v0, v15

    move-wide/from16 v20, v0

    sub-double v20, v20, v18

    div-double v20, v20, v6

    move-wide/from16 v0, v20

    iput-wide v0, v9, Lcom/perm/kate/api/PhotoTag;->y2:D

    .line 464
    sget-object v15, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v12

    .line 465
    .local v12, "tagged_user":Lcom/perm/kate/api/User;
    new-instance v3, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 466
    .local v3, "mProgressDialog":Landroid/app/ProgressDialog;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 467
    const v15, 0x7f070386

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/perm/kate/SinglePhotoViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 468
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 469
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 470
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v12, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 471
    .local v13, "user_name":Ljava/lang/String;
    new-instance v10, Lcom/perm/kate/SinglePhotoViewer$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1, v13, v3}, Lcom/perm/kate/SinglePhotoViewer$4;-><init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 500
    .local v10, "put_tag_callback":Lcom/perm/kate/session/Callback;
    new-instance v15, Lcom/perm/kate/SinglePhotoViewer$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9, v10}, Lcom/perm/kate/SinglePhotoViewer$5;-><init>(Lcom/perm/kate/SinglePhotoViewer;Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;)V

    .line 505
    invoke-virtual {v15}, Lcom/perm/kate/SinglePhotoViewer$5;->start()V

    goto/16 :goto_0
.end method

.method private onFailed()V
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/perm/kate/SinglePhotoViewer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 565
    :cond_0
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$8;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onOkClick()V
    .locals 20

    .prologue
    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    check-cast v13, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-virtual {v13}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValues()[Ljava/lang/Object;

    move-result-object v9

    .line 510
    .local v9, "values":[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v13, v9, v13

    check-cast v13, [D

    move-object v8, v13

    check-cast v8, [D

    .line 511
    .local v8, "size":[D
    const/4 v13, 0x0

    aget-wide v16, v8, v13

    const-wide/16 v18, 0x0

    cmpl-double v13, v16, v18

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    aget-wide v16, v8, v13

    const-wide/16 v18, 0x0

    cmpl-double v13, v16, v18

    if-nez v13, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    const/4 v13, 0x2

    aget-object v13, v9, v13

    check-cast v13, [F

    move-object v7, v13

    check-cast v7, [F

    .line 514
    .local v7, "matrix":[F
    const/4 v13, 0x2

    aget v13, v7, v13

    float-to-double v10, v13

    .line 515
    .local v10, "x0":D
    const/4 v13, 0x5

    aget v13, v7, v13

    float-to-double v14, v13

    .line 516
    .local v14, "y0":D
    move-object/from16 v0, p0

    iget v13, v0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v16, v0

    add-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    float-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 517
    .local v3, "_x":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v16, v0

    add-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    float-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    .line 518
    .local v5, "_y":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    move/from16 v16, v0

    sub-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    sub-double v16, v16, v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    float-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v4, v0

    .line 519
    .local v4, "_x2":I
    sub-int v2, v4, v3

    .line 520
    .local v2, "_w":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 521
    .local v12, "x_y_w":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v6, "data_intent":Landroid/content/Intent;
    const-string v13, "uri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 523
    const-string v13, "resize_option"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string v13, "rotate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const-string v13, "x_y_w"

    invoke-virtual {v6, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/perm/kate/SinglePhotoViewer;->setResult(ILandroid/content/Intent;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->finish()V

    goto/16 :goto_0
.end method

.method private onSelectUser()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 429
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 431
    const-string v1, "com.perm.kate.put_to_photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v1, "com.perm.kate.enable_me"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    return-void
.end method

.method private openPhotoOwner()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 776
    .local v0, "_id":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 777
    invoke-static {v0, v1, p0}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    .line 784
    .end local v0    # "_id":J
    :cond_0
    :goto_0
    return-void

    .line 778
    .restart local v0    # "_id":J
    :cond_1
    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 779
    const-wide/16 v4, -0x1

    mul-long/2addr v4, v0

    invoke-static {v4, v5, p0}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v0    # "_id":J
    :catch_0
    move-exception v2

    .line 781
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 782
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private postRunShowPhotoTags()V
    .locals 4

    .prologue
    .line 596
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 599
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$10;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    return-void
.end method

.method private preparePutTag()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x43480000    # 200.0f

    .line 209
    iget-boolean v8, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v8, :cond_1

    const/4 v4, 0x5

    .line 210
    .local v4, "p1":I
    :goto_0
    iget-boolean v8, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v8, :cond_2

    const/4 v5, 0x4

    .line 211
    .local v5, "p2":I
    :goto_1
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    div-int/2addr v8, v4

    int-to-double v6, v8

    .line 212
    .local v6, "w":D
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    div-int/2addr v8, v4

    int-to-double v2, v8

    .line 213
    .local v2, "h":D
    const-wide/16 v0, 0x0

    .line 214
    .local v0, "d":D
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    if-le v8, v9, :cond_3

    .line 215
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-double v0, v8

    .line 218
    :goto_2
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 219
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    .line 220
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    const v9, 0x7f0201bd

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/perm/kate/SinglePhotoViewer;->rec_touch_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    cmpl-double v8, v2, v6

    if-lez v8, :cond_4

    .line 224
    double-to-int v8, v6

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    .line 225
    double-to-int v8, v6

    double-to-int v9, v0

    add-int/2addr v8, v9

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    .line 226
    int-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-int v8, v8

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 227
    int-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-int v8, v8

    double-to-int v9, v0

    add-int/2addr v8, v9

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 234
    :goto_3
    iget-boolean v8, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v8, :cond_0

    .line 236
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/lit16 v9, v9, 0xc8

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 237
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    div-float v9, v10, v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 238
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    div-float v9, v10, v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 241
    :cond_0
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 242
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 243
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 244
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 245
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v8, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 209
    .end local v0    # "d":D
    .end local v2    # "h":D
    .end local v4    # "p1":I
    .end local v5    # "p2":I
    .end local v6    # "w":D
    :cond_1
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 210
    .restart local v4    # "p1":I
    :cond_2
    const/4 v5, 0x2

    goto/16 :goto_1

    .line 217
    .restart local v0    # "d":D
    .restart local v2    # "h":D
    .restart local v5    # "p2":I
    .restart local v6    # "w":D
    :cond_3
    iget v8, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    iget v9, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-double v0, v8

    goto/16 :goto_2

    .line 229
    :cond_4
    double-to-int v8, v2

    double-to-int v9, v0

    add-int/2addr v8, v9

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    .line 230
    double-to-int v8, v2

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    .line 231
    int-to-double v8, v5

    mul-double/2addr v8, v2

    double-to-int v8, v8

    double-to-int v9, v0

    add-int/2addr v8, v9

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 232
    int-to-double v8, v5

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    goto/16 :goto_3
.end method

.method private readyInUiThread()V
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/perm/kate/SinglePhotoViewer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$16;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 717
    :cond_0
    return-void
.end method

.method private showConfirmButtons()V
    .locals 2

    .prologue
    .line 664
    const v0, 0x7f0e0325

    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 665
    const v0, 0x7f0e0326

    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->removeTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    return-void
.end method

.method private showPhotoDetailsActivity()V
    .locals 8

    .prologue
    .line 789
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v4, v3, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 790
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 791
    .local v0, "account_id":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v3, v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 793
    .end local v0    # "account_id":J
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 794
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 795
    const-string v3, "com.perm.kate.photo_owner_id"

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 796
    const-string v3, "com.perm.kate.photo_id"

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v4, v4, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 797
    const-string v3, "com.perm.kate.album_id"

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v4, v4, Lcom/perm/kate/api/Photo;->aid:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 798
    const-string v3, "com.perm.kate.owner_id"

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    invoke-virtual {p0, v2}, Lcom/perm/kate/SinglePhotoViewer;->startActivity(Landroid/content/Intent;)V

    .line 800
    return-void
.end method

.method private showPhotoTags()V
    .locals 30

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->postRunShowPhotoTags()V

    .line 661
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->showConfirmButtons()V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    check-cast v24, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 625
    .local v5, "imageBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 627
    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v11, v0, [F

    .line 628
    .local v11, "matrix":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 629
    const/16 v24, 0x0

    aget v24, v11, v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v6, v0

    .line 630
    .local v6, "kx":D
    const/16 v24, 0x4

    aget v24, v11, v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v8, v0

    .line 631
    .local v8, "ky":D
    const/16 v24, 0x2

    aget v24, v11, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 632
    .local v18, "x0":D
    const/16 v24, 0x5

    aget v24, v11, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 633
    .local v22, "y0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_2
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/PhotoTag;

    .line 634
    .local v13, "pt":Lcom/perm/kate/api/PhotoTag;
    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->x:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v6

    add-double v16, v18, v26

    .line 635
    .local v16, "x":D
    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->y:D

    move-wide/from16 v26, v0

    mul-double v26, v26, v8

    add-double v20, v22, v26

    .line 636
    .local v20, "y":D
    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->x2:D

    move-wide/from16 v26, v0

    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->x:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    mul-double v26, v26, v6

    move-wide/from16 v0, v26

    double-to-int v15, v0

    .line 637
    .local v15, "width":I
    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->y2:D

    move-wide/from16 v26, v0

    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->y:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    mul-double v26, v26, v8

    move-wide/from16 v0, v26

    double-to-int v4, v0

    .line 638
    .local v4, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v26, v0

    cmpl-double v24, v16, v26

    if-gtz v24, :cond_2

    const-wide/high16 v26, -0x3fb7000000000000L    # -50.0

    cmpg-double v24, v16, v26

    if-ltz v24, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v26, v0

    cmpl-double v24, v20, v26

    if-gtz v24, :cond_2

    const-wide/high16 v26, -0x3fb7000000000000L    # -50.0

    cmpg-double v24, v20, v26

    if-ltz v24, :cond_2

    .line 640
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 641
    .local v10, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 642
    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v24

    const v26, 0x7f0300d7

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 644
    .local v14, "pt_view":Landroid/view/View;
    const v24, 0x7f0e0290

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    const v24, 0x7f0e0290

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    iget-object v0, v13, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->uid:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SinglePhotoViewer;->account_id:J

    move-wide/from16 v28, v0

    cmp-long v24, v26, v28

    if-nez v24, :cond_3

    .line 647
    const v24, 0x7f0e0290

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 648
    :cond_3
    const v24, 0x7f0e0290

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    iget-wide v0, v13, Lcom/perm/kate/api/PhotoTag;->uid:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 649
    const v24, 0x7f0e0290

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    new-instance v26, Lcom/perm/kate/SinglePhotoViewer$11;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/SinglePhotoViewer$11;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 658
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v24, 0x7f0e028f

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private showPhotoTagsUI()V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/perm/kate/SinglePhotoViewer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 585
    :cond_0
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$9;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private whoLikes()V
    .locals 4

    .prologue
    .line 765
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 766
    .local v0, "likes_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 767
    const-string v1, "com.perm.kate.item_id"

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 768
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 769
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0, v0}, Lcom/perm/kate/SinglePhotoViewer;->startActivity(Landroid/content/Intent;)V

    .line 771
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 736
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    if-nez v2, :cond_0

    .line 742
    :goto_0
    return v0

    .line 738
    :cond_0
    const/16 v2, 0x8

    const/16 v3, 0x3e9

    const v4, 0x7f070518

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 739
    const/16 v2, 0x3eb

    const v3, 0x7f0701d2

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 740
    const/16 v2, 0xe

    const/16 v3, 0x2725

    const v4, 0x7f07020c

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 741
    const/16 v2, 0x1b

    const/16 v3, 0x2726

    const v4, 0x7f07047f

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move v0, v1

    .line 742
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    .line 438
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 439
    const-string v2, "com.perm.kate.member_id"

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 440
    .local v0, "user_id":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 441
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/SinglePhotoViewer;->onAccept(J)V

    .line 443
    .end local v0    # "user_id":J
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super/range {p0 .. p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->isOld()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->is_old:Z

    .line 94
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->no_translucent_status:Z

    .line 95
    const v2, 0x7f0300fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->setContentView(I)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->setButtonsBg()V

    .line 97
    const v2, 0x7f0e0320

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->rl_root_single_photo:Landroid/widget/RelativeLayout;

    .line 98
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->is_old:Z

    if-eqz v2, :cond_2

    const v17, 0x7f0300da

    .line 99
    .local v17, "photo_view_id":I
    :goto_0
    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 100
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 101
    .local v16, "photo_view":Landroid/widget/RelativeLayout;
    const v2, 0x7f0e0299

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    .line 102
    const v2, 0x7f0e0321

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->tv_info:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0e0322

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0e0323

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->tv_info3:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f0e0324

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->btn_ok:Landroid/widget/Button;

    .line 109
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v15, "layout_params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->rl_root_single_photo:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 112
    const v2, 0x7f0e0295

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.put_tag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->putTag:Z

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.confirm_tag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->confirmTag:Z

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.photo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "resize_option"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "rotate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "crop"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v2, :cond_0

    .line 121
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/16 v6, 0x320

    const/16 v7, 0x320

    const v8, 0x7f0201e9

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 122
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 123
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    .line 124
    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    .line 125
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    .line 126
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->getRealBitmapSize(Landroid/net/Uri;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    move-object/from16 v0, p0

    invoke-static {v2, v0, v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 130
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_3

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->finish()V

    .line 161
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v15    # "layout_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "photo_view":Landroid/widget/RelativeLayout;
    .end local v17    # "photo_view_id":I
    :cond_1
    :goto_1
    return-void

    .line 98
    :cond_2
    const v17, 0x7f0300d9

    goto/16 :goto_0

    .line 134
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "display":Landroid/view/Display;
    .restart local v14    # "inflater":Landroid/view/LayoutInflater;
    .restart local v15    # "layout_params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16    # "photo_view":Landroid/widget/RelativeLayout;
    .restart local v17    # "photo_view_id":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->putTag:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v2, :cond_6

    .line 137
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->preparePutTag()V

    .line 138
    const v2, 0x7f0e0068

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/SinglePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->btn_ok:Landroid/widget/Button;

    new-instance v3, Lcom/perm/kate/SinglePhotoViewer$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/perm/kate/SinglePhotoViewer$1;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SinglePhotoViewer;->touch_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/SinglePhotoViewer;->confirmTag:Z

    if-eqz v2, :cond_1

    .line 151
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/perm/kate/SinglePhotoViewer;->account_id:J

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->getPhotoTags()V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->setupMenuButton()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v15    # "layout_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "photo_view":Landroid/widget/RelativeLayout;
    .end local v17    # "photo_view_id":I
    :catch_0
    move-exception v18

    .line 156
    .local v18, "th":Ljava/lang/Throwable;
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 159
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 805
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 806
    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    .line 807
    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    .line 808
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 747
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 761
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 749
    :sswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, p0}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 752
    :sswitch_1
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->whoLikes()V

    goto :goto_0

    .line 755
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->openPhotoOwner()V

    goto :goto_0

    .line 758
    :sswitch_3
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->showPhotoDetailsActivity()V

    goto :goto_0

    .line 747
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0xe -> :sswitch_2
        0x1b -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 727
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 728
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    .line 729
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 731
    :goto_0
    return v0

    .line 730
    :cond_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/SinglePhotoViewer;->fillMenuItems(Landroid/view/Menu;)Z

    .line 731
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method
