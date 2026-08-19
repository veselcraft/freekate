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

    .line 222
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, v0, Lcom/perm/kate/MessageSaveActivity;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f0344

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const v2, 0x7f09028b

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$6;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const v2, 0x7f09028c

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
