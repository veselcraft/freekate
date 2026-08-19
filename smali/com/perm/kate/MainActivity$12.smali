.class Lcom/perm/kate/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->showCloseConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/perm/kate/MainActivity$12;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1126
    iget-object p1, p0, Lcom/perm/kate/MainActivity$12;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
