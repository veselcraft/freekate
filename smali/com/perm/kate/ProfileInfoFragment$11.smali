.class Lcom/perm/kate/ProfileInfoFragment$11;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Lcom/perm/kate/BlackListActivity$BlackListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->addToBlackList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$11;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 788
    if-eqz p1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$11;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->access$1102(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 790
    :cond_0
    return-void
.end method
