.class Lcom/perm/kate/ProfileInfoFragment$12;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Lcom/perm/kate/BlackListActivity$BlackListCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$12;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 812
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$12;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileInfoFragment;->access$1102(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_0
    return-void
.end method
