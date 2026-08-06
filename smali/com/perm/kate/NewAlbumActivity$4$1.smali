.class Lcom/perm/kate/NewAlbumActivity$4$1;
.super Ljava/lang/Thread;
.source "NewAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewAlbumActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewAlbumActivity$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewAlbumActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewAlbumActivity$4;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 160
    const-string v2, ","

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v3, v3, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/NewAlbumActivity;->access$200(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "album_privacy_str":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v3, v3, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/NewAlbumActivity;->access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "comments_privacy_str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$500(Lcom/perm/kate/NewAlbumActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$600(Lcom/perm/kate/NewAlbumActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 163
    const/4 v6, 0x0

    .line 164
    .local v6, "gid1":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 167
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$600(Lcom/perm/kate/NewAlbumActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$1000(Lcom/perm/kate/NewAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v12, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/session/Session;->editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 170
    .end local v6    # "gid1":Ljava/lang/Long;
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$1000(Lcom/perm/kate/NewAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v0, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    move-object/from16 v17, v0

    move-object v13, v8

    move-object v14, v9

    invoke-virtual/range {v10 .. v17}, Lcom/perm/kate/session/Session;->createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
