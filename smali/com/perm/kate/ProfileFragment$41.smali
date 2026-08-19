.class Lcom/perm/kate/ProfileFragment$41;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/PhotoChooser$Callback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$41;->this$0:Lcom/perm/kate/ProfileFragment;

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

    .line 1681
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$41;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileFragment;->access$4600(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V

    return-void
.end method

.method public selectedFromAlbum(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method
