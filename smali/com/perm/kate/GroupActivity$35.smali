.class Lcom/perm/kate/GroupActivity$35;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$35;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .line 1110
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$35;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$3500(Lcom/perm/kate/GroupActivity;)V

    return-void
.end method
