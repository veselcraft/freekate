.class Lcom/perm/kate/MessageSaveActivity$6;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageSaveActivity;->displayProgressText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSaveActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 196
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const v2, 0x7f0702e6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v6, v5, Lcom/perm/kate/MessageSaveActivity;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/MessageSaveActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const v2, 0x7f0e0239

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const v2, 0x7f0e023c

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method
