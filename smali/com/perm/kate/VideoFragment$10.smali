.class Lcom/perm/kate/VideoFragment$10;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/VideoUploadCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$10;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$10;->this$0:Lcom/perm/kate/VideoFragment;

    const v1, 0x7f0f055f

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method

.method public success(J)V
    .locals 0

    .line 454
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$10;->this$0:Lcom/perm/kate/VideoFragment;

    const p2, 0x7f0f055d

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method
