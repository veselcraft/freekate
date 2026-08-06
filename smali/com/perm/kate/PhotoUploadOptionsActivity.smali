.class public Lcom/perm/kate/PhotoUploadOptionsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotoUploadOptionsActivity.java"


# instance fields
.field private editInfoClick:Landroid/view/View$OnClickListener;

.field private editListener:Landroid/view/View$OnClickListener;

.field imageView:Landroid/widget/ImageView;

.field private listener:Landroid/view/View$OnClickListener;

.field private resizeInfoClick:Landroid/view/View$OnClickListener;

.field resizeSpinner:Landroid/widget/Spinner;

.field rotate:I

.field uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    .line 85
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$1;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->listener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$2;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$3;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editInfoClick:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$8;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeInfoClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoUploadOptionsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoUploadOptionsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->saveResizeOption(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoUploadOptionsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoUploadOptionsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method private aviaryFix(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "str":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AVIARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 153
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p1
.end method

.method public static getResampledImage(Landroid/net/Uri;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rotate"    # I

    .prologue
    const/4 v10, 0x0

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "inputStream1":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 160
    .local v3, "inputStream2":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 163
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 164
    .local v4, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    const/4 v11, 0x0

    invoke-static {v2, v11, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 166
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 168
    const/16 v6, 0x258

    .line 171
    .local v6, "resample_size":I
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v9, v11, v6

    .line 172
    .local v9, "width_ratio":I
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, v11, v6

    .line 173
    .local v1, "height_ratio":I
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 174
    .local v7, "scale":I
    if-nez v7, :cond_0

    .line 175
    const/4 v7, 0x1

    .line 178
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 179
    .local v5, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v11, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 182
    const/4 v11, 0x0

    invoke-static {v3, v11, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 185
    invoke-static {v0, p2}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 192
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 193
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 195
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height_ratio":I
    .end local v4    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "resample_size":I
    .end local v7    # "scale":I
    .end local v9    # "width_ratio":I
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v8

    .line 189
    .local v8, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 193
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v10

    .line 195
    goto :goto_0

    .line 192
    .end local v8    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 193
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v10
.end method

.method private static getResizeOption()I
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_resize_option"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 250
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private saveResizeOption(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 257
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photo_resize_option"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 123
    :try_start_0
    const-string v2, "Kate.PhotoUploadOptionsActivity"

    const-string v3, "REQUEST_EDIT OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "Kate.PhotoUploadOptionsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-nez p3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0, v1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->aviaryFix(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v1}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result v2

    iput v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    .line 138
    iget-object v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    invoke-static {v1, p0, v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v4, 0x7f0300d8

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "uris"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "show_caption"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, "show_caption":Z
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 44
    :cond_0
    const v4, 0x7f0e0291

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_1
    const v4, 0x7f0e019f

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "btn_save":Landroid/widget/Button;
    const v4, 0x7f0704f4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 48
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v4, 0x7f0e0292

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v4, 0x7f0e0125

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    .line 53
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 54
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v4}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result v4

    iput v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    .line 58
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 59
    iget-object v5, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget v6, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    invoke-static {v4, p0, v6}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    const v4, 0x7f0e0126

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeSpinner:Landroid/widget/Spinner;

    .line 68
    invoke-static {}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResizeOption()I

    move-result v1

    .line 70
    .local v1, "resize":I
    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    .line 71
    const/4 v1, 0x2

    .line 72
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 74
    const v4, 0x7f0e0293

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editInfoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v4, 0x7f0e0294

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeInfoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->setButtonsBg()V

    .line 79
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 80
    const v4, 0x7f0e0068

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const v4, 0x7f0e00a3

    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_4
    return-void

    .line 61
    .end local v1    # "resize":I
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected showEditInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/PhotoUploadOptionsActivity$4;

    invoke-direct {v2, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$4;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v1, 0x7f0e0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/PhotoUploadOptionsActivity$5;

    invoke-direct {v2, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$5;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v1, 0x7f0e00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/PhotoUploadOptionsActivity$6;

    invoke-direct {v2, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$6;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f0e0288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/PhotoUploadOptionsActivity$7;

    invoke-direct {v2, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$7;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07018d

    .line 229
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 232
    return-void
.end method

.method protected showResizeInfo()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07036d

    .line 242
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 246
    return-void
.end method
