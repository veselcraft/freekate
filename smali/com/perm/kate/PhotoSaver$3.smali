.class final Lcom/perm/kate/PhotoSaver$3;
.super Ljava/lang/Object;
.source "PhotoSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoSaver;->saveTempPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$destination_file:Ljava/io/File;

.field final synthetic val$photo_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/perm/kate/PhotoSaver$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/perm/kate/PhotoSaver$3;->val$photo_url:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/PhotoSaver$3;->val$destination_file:Ljava/io/File;

    iput-object p4, p0, Lcom/perm/kate/PhotoSaver$3;->val$callback:Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/perm/kate/PhotoSaver$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$3;->val$photo_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/PhotoSaver$3;->val$destination_file:Ljava/io/File;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/PhotoSaver$3;->val$callback:Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/PhotoSaver;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    .line 264
    return-void
.end method
