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

    .line 91
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$2;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 94
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 95
    new-instance v8, Lcom/perm/kate/AccountsActivity$2$1;

    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$2;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {v8, p0, v0, v3}, Lcom/perm/kate/AccountsActivity$2$1;-><init>(Lcom/perm/kate/AccountsActivity$2;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 103
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v9, p0, Lcom/perm/kate/AccountsActivity$2;->this$0:Lcom/perm/kate/AccountsActivity;

    const-string v4, "members_count"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
