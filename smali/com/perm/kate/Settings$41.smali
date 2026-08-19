.class Lcom/perm/kate/Settings$41;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .line 1105
    iget-object p1, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 1106
    iget-object p1, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x3

    invoke-static {p1, v3, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v2

    .line 1110
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1112
    iget-object v0, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00f1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1113
    iget-object v3, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    const v5, 0x7f09010e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v3, v5}, Lcom/perm/kate/Settings;->access$1602(Lcom/perm/kate/Settings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1114
    iget-object v3, p0, Lcom/perm/kate/Settings$41;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v3}, Lcom/perm/kate/Settings;->access$1600(Lcom/perm/kate/Settings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09005a

    .line 1116
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1117
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1118
    new-instance v1, Lcom/perm/kate/Settings$41$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/Settings$41$1;-><init>(Lcom/perm/kate/Settings$41;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f0398

    .line 1129
    new-instance v1, Lcom/perm/kate/Settings$41$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/Settings$41$2;-><init>(Lcom/perm/kate/Settings$41;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f01c5

    .line 1144
    invoke-virtual {p1, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1145
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1146
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1147
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v2
.end method
