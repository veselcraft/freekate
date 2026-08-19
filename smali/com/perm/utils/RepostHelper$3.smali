.class Lcom/perm/utils/RepostHelper$3;
.super Ljava/lang/Object;
.source "RepostHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$wall_object:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Landroid/widget/CheckBox;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    iput-object p2, p0, Lcom/perm/utils/RepostHelper$3;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/perm/utils/RepostHelper$3;->val$et_message:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/perm/utils/RepostHelper$3;->val$wall_object:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/utils/RepostHelper$3;->val$group_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 109
    iget-object p1, p0, Lcom/perm/utils/RepostHelper$3;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {p1}, Lcom/perm/utils/RepostHelper;->access$000(Lcom/perm/utils/RepostHelper;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    :goto_0
    iget-object p2, p0, Lcom/perm/utils/RepostHelper$3;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {p2}, Lcom/perm/utils/RepostHelper;->access$000(Lcom/perm/utils/RepostHelper;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    .line 111
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const p2, 0x7f0f0544

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 114
    :cond_1
    iget-object p2, p0, Lcom/perm/utils/RepostHelper$3;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v1, p0, Lcom/perm/utils/RepostHelper$3;->val$wall_object:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/utils/RepostHelper$3;->val$group_id:Ljava/lang/Long;

    invoke-static {v0, v1, p2, v2, p1}, Lcom/perm/utils/RepostHelper;->access$100(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
