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

.field private lp:Landroid/widget/RelativeLayout$LayoutParams;

.field private margins:I

.field private photo:Lcom/perm/kate/api/Photo;

.field private photoTags:Ljava/util/ArrayList;

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

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

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

    .line 266
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$2;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_listener:Landroid/view/View$OnTouchListener;

    .line 293
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$3;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->rec_touch_listener:Landroid/view/View$OnTouchListener;

    .line 545
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SinglePhotoViewer$7;-><init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->tag_callback:Lcom/perm/kate/session/Callback;

    .line 672
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$12;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTagClickListener:Landroid/view/View$OnClickListener;

    .line 679
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$13;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->removeTagClickListener:Landroid/view/View$OnClickListener;

    .line 698
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$15;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SinglePhotoViewer$15;-><init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirm_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SinglePhotoViewer;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->onOkClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_w:I

    return p0
.end method

.method static synthetic access$1002(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_w:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    return p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    return p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    return p0
.end method

.method static synthetic access$1302(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    return p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    return p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    return p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_x:I

    return p0
.end method

.method static synthetic access$1602(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_x:I

    return p1
.end method

.method static synthetic access$1700(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_y:I

    return p0
.end method

.method static synthetic access$1702(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_y:I

    return p1
.end method

.method static synthetic access$1800(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info3:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/api/Photo;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->onSelectUser()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->tag_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/perm/kate/SinglePhotoViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/perm/kate/SinglePhotoViewer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->getTagId()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->showPhotoTagsUI()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->onFailed()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->postRunShowPhotoTags()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/SinglePhotoViewer;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/SinglePhotoViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->showPhotoTags()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/SinglePhotoViewer;Lcom/perm/kate/api/Photo;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SinglePhotoViewer;->confirmPhotoTag(Lcom/perm/kate/api/Photo;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/SinglePhotoViewer;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/perm/kate/SinglePhotoViewer;->allow:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/perm/kate/SinglePhotoViewer;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/perm/kate/SinglePhotoViewer;->account_tag_id:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->allow:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/perm/kate/SinglePhotoViewer;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->confirm_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->readyInUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->getSide()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/SinglePhotoViewer;III)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/SinglePhotoViewer;->moveSide(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SinglePhotoViewer;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SinglePhotoViewer;->moveTagRec(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    return p0
.end method

.method static synthetic access$802(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    return p1
.end method

.method static synthetic access$900(Lcom/perm/kate/SinglePhotoViewer;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    return p0
.end method

.method static synthetic access$902(Lcom/perm/kate/SinglePhotoViewer;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    return p1
.end method

.method private checkRealSizes(II)V
    .locals 3

    .line 179
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 180
    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 182
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    rem-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    .line 183
    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 184
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    :cond_0
    if-lez v0, :cond_2

    .line 187
    invoke-static {v0}, Lcom/perm/kate/photoupload/UploadHelper;->getResizeSize(I)I

    move-result p1

    .line 189
    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    if-le p2, p1, :cond_1

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 191
    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    .line 192
    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 194
    :cond_1
    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    if-le p2, p1, :cond_2

    int-to-float v0, p2

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 196
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float p1, p2

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 197
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    .line 200
    :cond_2
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 201
    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealHeight:I

    int-to-float p2, p2

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 202
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    return-void
.end method

.method private confirmPhotoTag(Lcom/perm/kate/api/Photo;Z)V
    .locals 1

    .line 687
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/SinglePhotoViewer$14;-><init>(Lcom/perm/kate/SinglePhotoViewer;ZLcom/perm/kate/api/Photo;)V

    .line 695
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getPhotoTags()V
    .locals 1

    .line 534
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$6;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    .line 542
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getRealBitmapSize(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 166
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 168
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 169
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/SinglePhotoViewer;->checkRealSizes(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 171
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    :goto_1
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 175
    throw v0
.end method

.method private getSide()I
    .locals 4

    .line 319
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 322
    :cond_0
    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    if-lez v1, :cond_1

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    if-lez v0, :cond_2

    .line 325
    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_w:I

    iget v3, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    if-lez v1, :cond_3

    .line 328
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_h:I

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private getTagId()V
    .locals 7

    .line 576
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/PhotoTag;

    .line 577
    iget-wide v2, v1, Lcom/perm/kate/api/PhotoTag;->uid:J

    iget-wide v4, p0, Lcom/perm/kate/SinglePhotoViewer;->account_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 578
    iget-wide v0, v1, Lcom/perm/kate/api/PhotoTag;->tag_id:J

    iput-wide v0, p0, Lcom/perm/kate/SinglePhotoViewer;->account_tag_id:J

    :cond_1
    return-void
.end method

.method private moveSide(III)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 373
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    sub-int v0, p1, v0

    .line 374
    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    sub-int v1, p2, v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    if-ne p3, v2, :cond_1

    .line 376
    :cond_0
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_x:I

    add-int/2addr v0, p1

    .line 377
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->_touch_y:I

    add-int v1, p2, p1

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ne p3, p1, :cond_2

    .line 384
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v4, v0

    .line 385
    iget-boolean v5, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ne p3, v6, :cond_4

    .line 389
    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int/2addr v5, v1

    .line 390
    iget-boolean v6, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v6, :cond_4

    move v4, v5

    :cond_4
    if-ne p3, v3, :cond_6

    .line 394
    iget v3, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v3, v0

    .line 395
    iget-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ne p3, v2, :cond_7

    .line 399
    iget p3, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int v0, p3, v1

    .line 400
    iget-boolean p3, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz p3, :cond_7

    move v3, v0

    .line 403
    :cond_7
    iget-boolean p3, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz p3, :cond_a

    if-ltz v4, :cond_9

    if-lez v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    .line 406
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    mul-float p1, p1, p2

    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/lit16 p2, p2, 0xc8

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a

    return-void

    .line 409
    :cond_a
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int p3, p1, p2

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-ge p3, v2, :cond_b

    if-gez v4, :cond_b

    return-void

    :cond_b
    sub-int p3, p1, p2

    .line 411
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-ge p3, v2, :cond_c

    if-lez v3, :cond_c

    return-void

    .line 413
    :cond_c
    iget p3, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int v6, p3, v2

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v1

    if-ge v6, v7, :cond_d

    if-gez v5, :cond_d

    return-void

    :cond_d
    sub-int v6, p3, v2

    .line 415
    div-int/lit8 v7, v1, 0x2

    add-int/2addr v1, v7

    if-ge v6, v1, :cond_e

    if-lez v0, :cond_e

    return-void

    :cond_e
    sub-int/2addr p2, v4

    .line 417
    iput p2, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v2, v5

    .line 418
    iput v2, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int/2addr p1, v3

    .line 419
    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr p3, v0

    .line 420
    iput p3, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 421
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 422
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 423
    iget p2, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 424
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    sub-int/2addr p1, p3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 425
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") dx1="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " dx2="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private moveTagRec(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 250
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_x:I

    sub-int/2addr p1, v0

    .line 251
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_y:I

    sub-int/2addr p2, v0

    .line 252
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int p1, v0, p1

    .line 253
    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    sub-int p2, v1, p2

    sub-int/2addr v0, p1

    .line 254
    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v1, p2

    .line 255
    iput v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    .line 256
    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 257
    iget p1, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 258
    iget-object p2, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 259
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 260
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 261
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 262
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onAccept(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 448
    new-instance v3, Lcom/perm/kate/api/PhotoTag;

    invoke-direct {v3}, Lcom/perm/kate/api/PhotoTag;-><init>()V

    .line 449
    iput-wide v1, v3, Lcom/perm/kate/api/PhotoTag;->uid:J

    .line 450
    iget-object v4, v0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v5, v4, Lcom/perm/kate/api/Photo;->pid:J

    iput-wide v5, v3, Lcom/perm/kate/api/PhotoTag;->pid:J

    .line 451
    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    .line 452
    iget-object v4, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    check-cast v4, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-virtual {v4}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValues()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    .line 453
    aget-object v6, v4, v5

    check-cast v6, [D

    .line 454
    aget-wide v7, v6, v5

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    aget-wide v11, v6, v7

    cmpl-double v6, v11, v9

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 456
    :cond_0
    aget-object v6, v4, v7

    check-cast v6, [D

    const/4 v8, 0x2

    .line 457
    aget-object v4, v4, v8

    check-cast v4, [F

    .line 458
    aget v9, v4, v5

    float-to-double v9, v9

    aget-wide v11, v6, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    const/4 v5, 0x4

    .line 459
    aget v5, v4, v5

    float-to-double v13, v5

    aget-wide v5, v6, v7

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v5

    div-double/2addr v13, v11

    .line 460
    aget v5, v4, v8

    float-to-double v5, v5

    const/4 v8, 0x5

    .line 461
    aget v4, v4, v8

    float-to-double v11, v4

    .line 462
    iget v4, v0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iget v8, v0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/2addr v4, v8

    move v15, v8

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v5

    div-double/2addr v7, v9

    iput-wide v7, v3, Lcom/perm/kate/api/PhotoTag;->x:D

    .line 463
    iget v4, v0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    add-int/2addr v4, v15

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v11

    div-double/2addr v7, v13

    iput-wide v7, v3, Lcom/perm/kate/api/PhotoTag;->y:D

    .line 464
    iget v4, v0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v4, v15

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v5

    div-double/2addr v7, v9

    iput-wide v7, v3, Lcom/perm/kate/api/PhotoTag;->x2:D

    .line 465
    iget v4, v0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v4, v15

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v11

    div-double/2addr v4, v13

    iput-wide v4, v3, Lcom/perm/kate/api/PhotoTag;->y2:D

    .line 466
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 467
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 468
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v5, 0x7f0f03f4

    .line 469
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 471
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    new-instance v4, Lcom/perm/kate/SinglePhotoViewer$4;

    invoke-direct {v4, v0, v0, v1, v2}, Lcom/perm/kate/SinglePhotoViewer$4;-><init>(Lcom/perm/kate/SinglePhotoViewer;Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 502
    new-instance v1, Lcom/perm/kate/SinglePhotoViewer$5;

    invoke-direct {v1, v0, v3, v4}, Lcom/perm/kate/SinglePhotoViewer$5;-><init>(Lcom/perm/kate/SinglePhotoViewer;Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;)V

    .line 507
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onFailed()V
    .locals 1

    .line 565
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 567
    :cond_0
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$8;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onOkClick()V
    .locals 10

    .line 511
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValues()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 512
    aget-object v2, v0, v1

    check-cast v2, [D

    .line 513
    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-wide v1, v2, v1

    cmpl-double v3, v1, v5

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 515
    aget-object v0, v0, v1

    check-cast v0, [F

    .line 516
    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x5

    .line 517
    aget v0, v0, v3

    float-to-double v3, v0

    .line 518
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iget v5, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/2addr v0, v5

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v1

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    .line 519
    iget v7, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    add-int/2addr v7, v5

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    double-to-int v3, v7

    .line 520
    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-int v0, v4

    sub-int/2addr v0, v6

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 524
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 525
    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    const-string v3, "resize_option"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    const-string v3, "rotate"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "x_y_w"

    .line 527
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 528
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSelectUser()V
    .locals 3

    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 431
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.put_to_photo"

    const/4 v2, 0x1

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.enable_me"

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openPhotoOwner()V
    .locals 5

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 779
    invoke-static {v0, v1, p0}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-wide/16 v2, -0x1

    mul-long v0, v0, v2

    .line 781
    invoke-static {v0, v1, p0}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 784
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private postRunShowPhotoTags()V
    .locals 4

    .line 598
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$10;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private preparePutTag()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "SetTextI18n"
        }
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 209
    :goto_1
    iget v3, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    div-int v4, v3, v1

    int-to-double v4, v4

    .line 210
    iget v6, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    div-int v1, v6, v1

    int-to-double v7, v1

    if-le v6, v3, :cond_2

    sub-int/2addr v6, v3

    .line 213
    div-int/2addr v6, v2

    int-to-double v1, v6

    goto :goto_2

    :cond_2
    sub-int/2addr v3, v6

    .line 215
    div-int/2addr v3, v2

    int-to-double v1, v3

    .line 216
    :goto_2
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    const v6, 0x7f08029e

    .line 218
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/perm/kate/SinglePhotoViewer;->rec_touch_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    cmpl-double v6, v7, v4

    if-lez v6, :cond_3

    double-to-int v6, v4

    .line 222
    iput v6, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    double-to-int v1, v1

    add-int/2addr v6, v1

    .line 223
    iput v6, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    int-to-double v6, v0

    .line 224
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v0, v6

    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    add-int/2addr v0, v1

    .line 225
    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    goto :goto_3

    :cond_3
    double-to-int v4, v7

    double-to-int v1, v1

    add-int v2, v4, v1

    .line 227
    iput v2, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    .line 228
    iput v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    int-to-double v4, v0

    .line 229
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-int v0, v4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 230
    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 232
    :goto_3
    iget-boolean v0, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz v0, :cond_4

    .line 234
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->bitmapRealScale:F

    mul-float v0, v0, v2

    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    add-int/lit16 v5, v4, 0xc8

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4

    const/high16 v0, 0x43480000    # 200.0f

    div-float v5, v0, v2

    float-to-int v5, v5

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    .line 235
    iput v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    .line 236
    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    iput v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    .line 239
    :cond_4
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 240
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 241
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 242
    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    iget v1, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 243
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->x1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/perm/kate/SinglePhotoViewer;->x2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perm/kate/SinglePhotoViewer;->y2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private readyInUiThread()V
    .locals 1

    .line 711
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$16;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showConfirmButtons()V
    .locals 2

    const v0, 0x7f0901cc

    .line 667
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090072

    .line 668
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090076

    .line 669
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->removeTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPhotoDetailsActivity()V
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 792
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 793
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 795
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 796
    const-class v1, Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 797
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.photo_owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 798
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->pid:J

    const-string v3, "com.perm.kate.photo_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 799
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->aid:J

    const-string v3, "com.perm.kate.album_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 800
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPhotoTags()V
    .locals 23

    move-object/from16 v0, p0

    .line 621
    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->postRunShowPhotoTags()V

    return-void

    .line 625
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/SinglePhotoViewer;->showConfirmButtons()V

    .line 626
    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 627
    iget-object v2, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 630
    iget-object v3, v0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    .line 631
    aget v4, v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v6, v4

    const/4 v4, 0x4

    .line 632
    aget v4, v2, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v4, v1

    div-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v1, 0x2

    .line 633
    aget v1, v2, v1

    float-to-double v8, v1

    const/4 v1, 0x5

    .line 634
    aget v1, v2, v1

    float-to-double v1, v1

    .line 635
    iget-object v10, v0, Lcom/perm/kate/SinglePhotoViewer;->photoTags:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/api/PhotoTag;

    .line 636
    iget-wide v12, v11, Lcom/perm/kate/api/PhotoTag;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v12, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v8

    move-wide/from16 v16, v8

    .line 637
    iget-wide v8, v11, Lcom/perm/kate/api/PhotoTag;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v18, v8, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v21, v4

    add-double v3, v1, v18

    move-wide/from16 v18, v1

    .line 638
    iget-wide v1, v11, Lcom/perm/kate/api/PhotoTag;->x2:D

    sub-double/2addr v1, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    double-to-int v1, v1

    .line 639
    iget-wide v12, v11, Lcom/perm/kate/api/PhotoTag;->y2:D

    sub-double/2addr v12, v8

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v21

    double-to-int v2, v12

    .line 640
    iget v5, v0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    int-to-double v8, v5

    cmpl-double v5, v14, v8

    if-gtz v5, :cond_4

    const-wide/high16 v8, -0x3fb7000000000000L    # -50.0

    cmpg-double v5, v14, v8

    if-ltz v5, :cond_4

    iget v5, v0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    int-to-double v12, v5

    cmpl-double v5, v3, v12

    if-gtz v5, :cond_4

    cmpg-double v5, v3, v8

    if-gez v5, :cond_2

    goto :goto_1

    .line 642
    :cond_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    double-to-int v8, v14

    .line 643
    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    double-to-int v3, v3

    .line 644
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00f2

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090395

    .line 647
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v13, v11, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-wide v13, v11, Lcom/perm/kate/api/PhotoTag;->uid:J

    iget-wide v8, v0, Lcom/perm/kate/SinglePhotoViewer;->account_id:J

    cmp-long v20, v13, v8

    if-nez v20, :cond_3

    .line 650
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 651
    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-wide v13, v11, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 652
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v8, Lcom/perm/kate/SinglePhotoViewer$11;

    invoke-direct {v8, v0}, Lcom/perm/kate/SinglePhotoViewer$11;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f09019e

    .line 661
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    iget-object v1, v0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    move-wide/from16 v8, v16

    move-wide/from16 v1, v18

    move-wide/from16 v4, v21

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private showPhotoTagsUI()V
    .locals 1

    .line 585
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$9;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private whoLikes()V
    .locals 4

    .line 767
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 768
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 769
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->pid:J

    const-string v3, "com.perm.kate.item_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 770
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_type"

    const-string v2, "photo"

    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8

    const/16 v2, 0x3e9

    const v3, 0x7f0f05a2

    .line 740
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x3eb

    const v2, 0x7f0f022e

    const/4 v3, 0x1

    .line 741
    invoke-interface {p1, v1, v3, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0xe

    const/16 v2, 0x2725

    const v4, 0x7f0f0266

    .line 742
    invoke-interface {p1, v1, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x1b

    const/16 v2, 0x2726

    const v4, 0x7f0f050e

    .line 743
    invoke-interface {p1, v1, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 439
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "com.perm.kate.member_id"

    const-wide/16 v0, 0x0

    .line 441
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SinglePhotoViewer;->onAccept(J)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    const v0, 0x7f0c0117

    .line 91
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const v0, 0x7f0902a9

    .line 93
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->rl_root_single_photo:Landroid/widget/RelativeLayout;

    const v0, 0x7f0c00f4

    const-string v1, "layout_inflater"

    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090147

    .line 97
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    const v1, 0x7f090377

    .line 98
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info:Landroid/widget/TextView;

    const v1, 0x7f090378

    .line 99
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info2:Landroid/widget/TextView;

    const v1, 0x7f090379

    .line 100
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->tv_info3:Landroid/widget/TextView;

    const v1, 0x7f090085

    .line 104
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/SinglePhotoViewer;->btn_ok:Landroid/widget/Button;

    .line 105
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->rl_root_single_photo:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    const p1, 0x7f090185

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.put_tag"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->putTag:Z

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.confirm_tag"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTag:Z

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.photo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "resize_option"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->resize_option:I

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "rotate"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "crop"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    .line 116
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/16 v8, 0x320

    const/16 v9, 0x320

    const v10, 0x7f0800df

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_width:I

    .line 120
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->screen_height:I

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 121
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->tumbs:I

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 122
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/SinglePhotoViewer;->margins:I

    .line 123
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 124
    invoke-direct {p0, p1}, Lcom/perm/kate/SinglePhotoViewer;->getRealBitmapSize(Landroid/net/Uri;)V

    .line 125
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->uri:Landroid/net/Uri;

    iget v0, p0, Lcom/perm/kate/SinglePhotoViewer;->rotate:I

    const/16 v1, 0x258

    invoke-static {p1, p0, v0, v1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    :cond_2
    iget-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->putTag:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->crop:Z

    if-eqz p1, :cond_4

    .line 133
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->preparePutTag()V

    const p1, 0x7f090138

    .line 134
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->btn_ok:Landroid/widget/Button;

    new-instance v0, Lcom/perm/kate/SinglePhotoViewer$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SinglePhotoViewer$1;-><init>(Lcom/perm/kate/SinglePhotoViewer;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer;->img_photo_view:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->touch_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-boolean p1, p0, Lcom/perm/kate/SinglePhotoViewer;->confirmTag:Z

    if-eqz p1, :cond_5

    .line 147
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/SinglePhotoViewer;->account_id:J

    .line 148
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->getPhotoTags()V

    .line 149
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 151
    :cond_5
    invoke-static {p0, v3}, Lcom/perm/kate/Helper;->fixNavBarColor(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 153
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_6

    .line 156
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 807
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->runnableTimer:Ljava/lang/Runnable;

    .line 809
    iput-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->handlerTimer:Landroid/os/Handler;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 749
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    .line 763
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->showPhotoDetailsActivity()V

    return v1

    .line 757
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->openPhotoOwner()V

    return v1

    .line 754
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/SinglePhotoViewer;->whoLikes()V

    return v1

    :cond_3
    const/4 p1, 0x0

    .line 751
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3, p0}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 729
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 730
    iget-object v0, p0, Lcom/perm/kate/SinglePhotoViewer;->photo:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    .line 731
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 732
    :cond_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/SinglePhotoViewer;->fillMenuItems(Landroid/view/Menu;)Z

    .line 733
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
