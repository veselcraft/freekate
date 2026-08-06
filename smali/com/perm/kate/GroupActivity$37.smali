.class Lcom/perm/kate/GroupActivity$37;
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
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1104
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$2900(Lcom/perm/kate/GroupActivity;)V

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .local v3, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    const/16 v5, 0xb

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0

    .line 1110
    .end local v3    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$37;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$3700(Lcom/perm/kate/GroupActivity;)V

    goto :goto_0
.end method
