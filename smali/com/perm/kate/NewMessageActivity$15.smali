.class Lcom/perm/kate/NewMessageActivity$15;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$15;->this$0:Lcom/perm/kate/NewMessageActivity;

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

    .line 771
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$15;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMessageActivity;->access$2300(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    return-void
.end method
