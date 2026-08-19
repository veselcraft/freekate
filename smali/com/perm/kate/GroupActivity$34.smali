.class Lcom/perm/kate/GroupActivity$34;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/PhotoChooser$Callback;


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

    .line 1096
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$34;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    return-void
.end method

.method public selected(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$34;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupActivity;->access$3400(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public selectedFromAlbum(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
