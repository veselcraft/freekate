.class Lcom/perm/kate/DocClickHelper$4;
.super Ljava/lang/Object;
.source "DocClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DocClickHelper;->showEditDocDialog(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$doc_id:J

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;Landroid/widget/EditText;JJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/DocClickHelper;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$4;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-object p2, p0, Lcom/perm/kate/DocClickHelper$4;->val$et_message:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/perm/kate/DocClickHelper$4;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/kate/DocClickHelper$4;->val$doc_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$4;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "text":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 143
    const/4 v0, 0x0

    const/16 v1, 0x7f

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$4;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$4;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/DocClickHelper$4;->val$doc_id:J

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/DocClickHelper;->access$500(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$4;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v0}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const v1, 0x7f0704b0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto :goto_0
.end method
