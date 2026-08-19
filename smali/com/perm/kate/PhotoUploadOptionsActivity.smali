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


# direct methods
.method public static synthetic $r8$lambda$11ehLx9JcJxHwLv9eF0fnoktMIw(Lcom/perm/kate/PhotoUploadOptionsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$6Yjfn8VYY2JsQxwSsl-QZAScuss(Lcom/perm/kate/PhotoUploadOptionsActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->lambda$onCreate$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    .line 94
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$1;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->listener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$2;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editListener:Landroid/view/View$OnClickListener;

    .line 210
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$3;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editInfoClick:Landroid/view/View$OnClickListener;

    .line 246
    new-instance v0, Lcom/perm/kate/PhotoUploadOptionsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$8;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeInfoClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoUploadOptionsActivity;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->saveResizeOption(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoUploadOptionsActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method private aviaryFix(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AVIARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getResampledImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 178
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 180
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 183
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, p3

    .line 184
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, p3

    .line 185
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v3, p3

    .line 190
    :goto_0
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 191
    iput v3, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 192
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :try_start_2
    invoke-static {p0, v0, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 195
    invoke-static {p0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 197
    invoke-static {p1, p2}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {p0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    .line 201
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 204
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {p0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_3
    move-exception p1

    .line 204
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 205
    invoke-static {p0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 206
    throw p1
.end method

.method static getResizeOption()I
    .locals 3

    .line 273
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_resize_option"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 4

    const/4 v0, 0x1

    .line 64
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 65
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    const/16 v3, 0x258

    invoke-static {v0, p0, v2, v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 67
    new-instance v1, Lcom/perm/kate/PhotoUploadOptionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/PhotoUploadOptionsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 2

    .line 262
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private saveResizeOption(I)V
    .locals 2

    .line 269
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "photo_resize_option"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "Kate.PhotoUploadOptions"

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    :try_start_0
    const-string p1, "REQUEST_EDIT OK"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "data="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoUploadOptionsActivity;->aviaryFix(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p1}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result p2

    iput p2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    .line 152
    iget-object p3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x258

    invoke-static {p1, p0, p2, v0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00f3

    .line 41
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uris"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "show_caption"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    :cond_0
    const p1, 0x7f0900a6

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p1, 0x7f090090

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v3, 0x7f0f0579

    .line 50
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 51
    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09010d

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09027c

    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    .line 56
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 57
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 62
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoUploadOptionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0902d2

    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeSpinner:Landroid/widget/Spinner;

    .line 77
    invoke-static {}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResizeOption()I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_4

    const/4 p1, 0x2

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    const p1, 0x7f090112

    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->editInfoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902a2

    .line 84
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeInfoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 88
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_5

    const p1, 0x7f090138

    .line 89
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090139

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected showEditInfo()V
    .locals 4

    .line 217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009c

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/perm/kate/PhotoUploadOptionsActivity$4;

    invoke-direct {v3, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$4;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09009d

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/perm/kate/PhotoUploadOptionsActivity$5;

    invoke-direct {v3, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$5;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09009e

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/perm/kate/PhotoUploadOptionsActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$6;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09009f

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/perm/kate/PhotoUploadOptionsActivity$7;

    invoke-direct {v3, p0}, Lcom/perm/kate/PhotoUploadOptionsActivity$7;-><init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    .line 240
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01ec

    .line 241
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showResizeInfo()V
    .locals 3

    .line 253
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03d6

    .line 254
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 255
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
