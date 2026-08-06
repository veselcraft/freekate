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
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$15;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$15;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$3000(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    .line 984
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$15;->this$0:Lcom/perm/kate/WallPostActivity;

    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->displayToast(I)V

    .line 985
    return-void
.end method
