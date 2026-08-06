.class Lcom/perm/kate/AccountsActivity$2$1;
.super Lcom/perm/kate/session/Callback;
.source "AccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AccountsActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AccountsActivity$2;

.field final synthetic val$me:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity$2;Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AccountsActivity$2;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$2$1;->this$1:Lcom/perm/kate/AccountsActivity$2;

    iput-object p3, p0, Lcom/perm/kate/AccountsActivity$2$1;->val$me:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 94
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iget-object v1, p0, Lcom/perm/kate/AccountsActivity$2$1;->val$me:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/perm/kate/db/DataHelper;->createUserGroups(Ljava/util/ArrayList;JZ)V

    .line 95
    return-void
.end method
