.class Lcom/perm/kate/WallPostActivity$22;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->showCopyrightLinkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$22;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$22;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1240
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$22;->this$0:Lcom/perm/kate/WallPostActivity;

    iget-object p2, p0, Lcom/perm/kate/WallPostActivity$22;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/WallPostActivity;->access$902(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
