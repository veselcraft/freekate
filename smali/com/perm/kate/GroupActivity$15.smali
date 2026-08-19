.class Lcom/perm/kate/GroupActivity$15;
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

    .line 593
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 596
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pages?oid=-"

    invoke-static {v0}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object v0

    iget-wide v0, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&p="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 600
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$15;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/Helper;->showWebActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
