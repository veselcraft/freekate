.class Lcom/perm/kate/AccountsActivity$2$1;
.super Lcom/perm/kate/session/Callback;
.source "AccountsActivity.java"


# instance fields
.field final synthetic val$me:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity$2;Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 0

    .line 95
    iput-object p3, p0, Lcom/perm/kate/AccountsActivity$2$1;->val$me:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 99
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/AccountsActivity$2$1;->val$me:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createUserGroups(Ljava/util/ArrayList;JZ)V

    return-void
.end method
