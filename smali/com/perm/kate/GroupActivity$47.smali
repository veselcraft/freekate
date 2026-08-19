.class Lcom/perm/kate/GroupActivity$47;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1328
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1329
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$3900(Lcom/perm/kate/GroupActivity;)V

    return-void

    .line 1333
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1334
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1335
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    const-class v1, Lcom/perm/kate/LoginActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1336
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1337
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1340
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$47;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$4000(Lcom/perm/kate/GroupActivity;)V

    :goto_0
    return-void
.end method
