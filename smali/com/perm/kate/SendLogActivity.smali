.class public Lcom/perm/kate/SendLogActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SendLogActivity.java"


# instance fields
.field private text:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$CsmZnTLcqnd0eMyCCCZGVOmiO8w(Lcom/perm/kate/SendLogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SendLogActivity;->lambda$showAnswer$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SendLogActivity;)Landroid/widget/EditText;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/SendLogActivity;->text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/SendLogActivity;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/SendLogActivity;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SendLogActivity;Lcom/perm/utils/AnswerType;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/SendLogActivity;->showAnswer(Lcom/perm/utils/AnswerType;)V

    return-void
.end method

.method private synthetic lambda$showAnswer$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    new-instance p1, Lcom/perm/kate/LogCollector;

    invoke-direct {p1, p0}, Lcom/perm/kate/LogCollector;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/perm/kate/SendLogActivity;->text:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perm/kate/LogCollector;->execute(Ljava/lang/String;)V

    const-string p1, "answer_not_accepted"

    invoke-direct {p0, p1}, Lcom/perm/kate/SendLogActivity;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method private reportEvent(Ljava/lang/String;)V
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "type"

    .line 77
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ANSWER_PARSER"

    .line 78
    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showAnswer(Lcom/perm/utils/AnswerType;)V
    .locals 2

    .line 59
    invoke-static {p1}, Lcom/perm/utils/AnswerParser;->getAnswer(Lcom/perm/utils/AnswerType;)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 63
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 64
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0414\u0430, \u043e\u0442\u0432\u0435\u0442 \u043f\u043e\u043d\u044f\u0442\u0435\u043d, \u0432\u043e\u043f\u0440\u043e\u0441 \u043c\u043e\u0436\u043d\u043e \u043d\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0442\u044c."

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/SendLogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/SendLogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SendLogActivity;)V

    const-string v1, "\u041d\u0435\u0442, \u043e\u0442\u0432\u0435\u0442 \u043d\u0435 \u043f\u043e\u043d\u044f\u0442\u0435\u043d, \u0445\u043e\u0447\u0443 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0432\u043e\u043f\u0440\u043e\u0441 \u0447\u0442\u043e\u0431\u044b \u0440\u0430\u0437\u0440\u0430\u0431\u043e\u0442\u0447\u0438\u043a\u0438 \u043e\u0442\u0432\u0435\u0442\u0438\u043b\u0438 \u043c\u043d\u0435 \u043b\u0438\u0447\u043d\u043e."

    .line 67
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const v0, 0x102000b

    .line 70
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 71
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0115

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0467

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f090329

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/SendLogActivity;->text:Landroid/widget/EditText;

    const p1, 0x7f0900a1

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/SendLogActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SendLogActivity$1;-><init>(Lcom/perm/kate/SendLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
