.class Lcom/perm/kate/VideoMenu$7;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->showAlbumsDialogWithCheck(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoMenu;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$7;->this$0:Lcom/perm/kate/VideoMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$7;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/VideoMenu$7;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    instance-of v0, v0, Lcom/perm/kate/VideoFragment;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$7;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, v0, Lcom/perm/kate/VideoMenu;->fragment:Lcom/perm/kate/BaseFragment;

    check-cast v0, Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    .line 289
    :cond_0
    return-void
.end method
