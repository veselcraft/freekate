.class Lcom/perm/kate/GroupManagersAdapter$1;
.super Ljava/lang/Object;
.source "GroupManagersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupManagersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagersAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupManagersAdapter;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/perm/kate/GroupManagersAdapter$1;->this$0:Lcom/perm/kate/GroupManagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 136
    .local v0, "user":Lcom/perm/kate/api/User;
    if-eqz v0, :cond_0

    .line 137
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 138
    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupManagersAdapter$1;->this$0:Lcom/perm/kate/GroupManagersAdapter;

    invoke-static {v2}, Lcom/perm/kate/GroupManagersAdapter;->access$000(Lcom/perm/kate/GroupManagersAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 140
    :cond_0
    return-void
.end method
