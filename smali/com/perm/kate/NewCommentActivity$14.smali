.class Lcom/perm/kate/NewCommentActivity$14;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$14;->this$0:Lcom/perm/kate/NewCommentActivity;

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

    .line 617
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$14;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewCommentActivity;->access$2200(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    return-void
.end method
