.class Lcom/perm/kate/StatusActivity$6;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatusActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StatusActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$6;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$6;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 157
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$6;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/StatusActivity;->access$400(Lcom/perm/kate/StatusActivity;Ljava/lang/String;)V

    .line 152
    return-void
.end method
