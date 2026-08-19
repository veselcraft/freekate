.class Lcom/perm/kate/GroupActivity$38;
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

    .line 1159
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1162
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1163
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$3000(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0

    .line 1164
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0

    .line 1168
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1169
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$38;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$3800(Lcom/perm/kate/GroupActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
