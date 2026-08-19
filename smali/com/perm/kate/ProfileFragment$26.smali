.class Lcom/perm/kate/ProfileFragment$26;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/perm/kate/BlackListActivity$BlackListCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1392
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$26;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$702(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_0
    return-void
.end method
