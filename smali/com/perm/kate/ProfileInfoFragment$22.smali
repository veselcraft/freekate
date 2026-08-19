.class Lcom/perm/kate/ProfileInfoFragment$22;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/PhotoChooser$Callback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$22;->this$0:Lcom/perm/kate/ProfileInfoFragment;

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

    .line 995
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$22;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileInfoFragment;->access$2300(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V

    return-void
.end method

.method public selectedFromAlbum(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method
