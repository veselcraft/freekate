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

    .line 160
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 163
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$200(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$500(Lcom/perm/kate/NewAlbumActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$600(Lcom/perm/kate/NewAlbumActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    .line 167
    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v3, v3, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/NewAlbumActivity;->access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v2, v2, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/NewAlbumActivity;->access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_0
    move-object v5, v2

    .line 170
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v3, v3, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/NewAlbumActivity;->access$600(Lcom/perm/kate/NewAlbumActivity;)J

    move-result-wide v3

    iget-object v6, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v6, v6, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v6}, Lcom/perm/kate/NewAlbumActivity;->access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v7, v7, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v7}, Lcom/perm/kate/NewAlbumActivity;->access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v7, v7, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v7}, Lcom/perm/kate/NewAlbumActivity;->access$1000(Lcom/perm/kate/NewAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v7, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v11, v7, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/session/Session;->editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 172
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v3, v3, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/NewAlbumActivity;->access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v4, v4, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v4}, Lcom/perm/kate/NewAlbumActivity;->access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v5, v5, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v5}, Lcom/perm/kate/NewAlbumActivity;->access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v5, v5, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v5}, Lcom/perm/kate/NewAlbumActivity;->access$1000(Lcom/perm/kate/NewAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v5, p0, Lcom/perm/kate/NewAlbumActivity$4$1;->this$1:Lcom/perm/kate/NewAlbumActivity$4;

    iget-object v9, v5, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    move-object v5, v0

    move-object v6, v1

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
