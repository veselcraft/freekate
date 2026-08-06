.class Lcom/perm/kate/AccountsActivity$2;
.super Ljava/lang/Thread;
.source "AccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AccountsActivity;->getGroups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AccountsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AccountsActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$2;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 89
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 90
    .local v1, "me":Ljava/lang/Long;
    new-instance v5, Lcom/perm/kate/AccountsActivity$2$1;

    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$2;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {v5, p0, v0, v1}, Lcom/perm/kate/AccountsActivity$2$1;-><init>(Lcom/perm/kate/AccountsActivity$2;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 97
    .local v5, "c":Lcom/perm/kate/session/Callback;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p0, Lcom/perm/kate/AccountsActivity$2;->this$0:Lcom/perm/kate/AccountsActivity;

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 98
    return-void
.end method
