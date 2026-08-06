.class Lcom/perm/utils/RepostHelper$1;
.super Ljava/lang/Object;
.source "RepostHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$wall_object:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/RepostHelper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$1;->this$0:Lcom/perm/utils/RepostHelper;

    iput-object p2, p0, Lcom/perm/utils/RepostHelper$1;->val$et_message:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/perm/utils/RepostHelper$1;->val$wall_object:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/RepostHelper$1;->val$group_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/perm/utils/RepostHelper$1;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/utils/RepostHelper$1;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v2, p0, Lcom/perm/utils/RepostHelper$1;->val$wall_object:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/utils/RepostHelper$1;->val$group_id:Ljava/lang/Long;

    invoke-static {v1, v2, v0, v3}, Lcom/perm/utils/RepostHelper;->access$000(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    return-void
.end method
