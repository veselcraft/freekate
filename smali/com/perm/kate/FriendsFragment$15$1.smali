.class Lcom/perm/kate/FriendsFragment$15$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment$15;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FriendsFragment$15;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/FriendsFragment$15;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$15$1;->this$1:Lcom/perm/kate/FriendsFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15$1;->this$1:Lcom/perm/kate/FriendsFragment$15;

    iget-object v0, v0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/FriendsFragment;->access$1700(Lcom/perm/kate/FriendsFragment;)V

    .line 667
    return-void
.end method
