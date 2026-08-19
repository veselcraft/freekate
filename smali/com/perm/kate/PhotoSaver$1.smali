.class Lcom/perm/kate/PhotoSaver$1;
.super Ljava/lang/Object;
.source "PhotoSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$application_context:Landroid/content/Context;

.field final synthetic val$destination_file:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/perm/kate/PhotoSaver$1;->val$application_context:Landroid/content/Context;

    iput-object p2, p0, Lcom/perm/kate/PhotoSaver$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/PhotoSaver$1;->val$destination_file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/perm/kate/PhotoSaver$1;->val$application_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/perm/kate/PhotoSaver$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/PhotoSaver$1;->val$destination_file:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/PhotoSaver;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    return-void
.end method
