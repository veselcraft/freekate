.class Lcom/perm/kate/SearchWallActivity$5;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$5;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$5;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$5;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$800(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/SearchWallAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$5;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$800(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/SearchWallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$5;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchWallActivity;->access$900(Lcom/perm/kate/SearchWallActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchWallAdapter;->displayNewData(Ljava/util/ArrayList;)V

    return-void
.end method
