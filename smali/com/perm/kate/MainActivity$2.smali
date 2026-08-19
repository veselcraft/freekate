.class Lcom/perm/kate/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;

.field final synthetic val$have_session:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;Z)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/perm/kate/MainActivity$2;->this$0:Lcom/perm/kate/MainActivity;

    iput-boolean p2, p0, Lcom/perm/kate/MainActivity$2;->val$have_session:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/perm/kate/MainActivity$2;->this$0:Lcom/perm/kate/MainActivity;

    iget-boolean v1, p0, Lcom/perm/kate/MainActivity$2;->val$have_session:Z

    invoke-static {v0, v1}, Lcom/perm/utils/UpdateChecker;->checkSometimes(Landroid/app/Activity;Z)V

    .line 198
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    .line 199
    iget-object v0, p0, Lcom/perm/kate/MainActivity$2;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v0}, Lcom/perm/kate/Helper;->cleanup(Landroid/content/Context;)V

    .line 201
    invoke-static {}, Lcom/perm/kate/UpdateService;->runIfRequired()V

    return-void
.end method
