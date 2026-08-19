.class Lcom/perm/kate/GroupManagersAdapter$1;
.super Ljava/lang/Object;
.source "GroupManagersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagersAdapter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/perm/kate/GroupManagersAdapter$1;->this$0:Lcom/perm/kate/GroupManagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    if-eqz p1, :cond_0

    .line 137
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 138
    iget-wide v0, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupManagersAdapter$1;->this$0:Lcom/perm/kate/GroupManagersAdapter;

    invoke-static {v0}, Lcom/perm/kate/GroupManagersAdapter;->access$000(Lcom/perm/kate/GroupManagersAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
