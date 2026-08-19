.class Lcom/perm/kate/WallPostActivity$15;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$15;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$15;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$3100(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    .line 1011
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$15;->this$0:Lcom/perm/kate/WallPostActivity;

    const v0, 0x7f0f012c

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
