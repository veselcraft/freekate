.class Lcom/perm/kate/AccountsActivity$6;
.super Ljava/lang/Thread;
.source "AccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AccountsActivity;->removeAccount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AccountsActivity;

.field final synthetic val$session:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity;Lcom/perm/kate/session/Session;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$6;->this$0:Lcom/perm/kate/AccountsActivity;

    iput-object p2, p0, Lcom/perm/kate/AccountsActivity$6;->val$session:Lcom/perm/kate/session/Session;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$6;->val$session:Lcom/perm/kate/session/Session;

    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AccountsActivity$6;->this$0:Lcom/perm/kate/AccountsActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/perm/kate/session/Session;->unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
